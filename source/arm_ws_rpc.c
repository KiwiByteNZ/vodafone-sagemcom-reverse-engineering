typedef unsigned short u16;
typedef unsigned int u32;

struct sockaddr_in { u16 family, port; u32 addr; unsigned char zero[8]; };

static long sc(long n,long a,long b,long c){
 register long r7 __asm__("r7")=n,r0 __asm__("r0")=a,r1 __asm__("r1")=b,r2 __asm__("r2")=c;
 __asm__ volatile("svc 0":"+r"(r0):"r"(r7),"r"(r1),"r"(r2):"memory"); return r0;
}
static unsigned slen(const char*s){unsigned n=0;while(s[n])n++;return n;}
static void diag(char c){
 long f=sc(5,(long)"/tmp/wsdiag",0x401,0); /* append, file is pre-created */
 if(f>=0){sc(4,f,(long)&c,1);sc(6,f,0,0);}
}

static long send_fragment(long s, unsigned char opcode, int final,
                          const char *data, unsigned len)
{
 static unsigned char f[106];
 static const unsigned char mask[4]={0x12,0x34,0x56,0x78};
 unsigned p=0;
 f[p++]=(final?0x80:0)|opcode;
 f[p++]=0x80|len;
 for(unsigned i=0;i<4;i++)f[p++]=mask[i];
 for(unsigned i=0;i<len;i++)f[p++]=((unsigned char)data[i])^mask[i&3];
 return sc(4,s,(long)f,p);
}

static void run(void){
 static char req[8192], out[16384];
 static const char hs[]="GET / HTTP/1.1\r\nHost: 127.0.0.1:2042\r\nUpgrade: websocket\r\nConnection: Upgrade\r\nSec-WebSocket-Key: dGhlIHNhbXBsZSBub25jZQ==\r\nSec-WebSocket-Version: 13\r\nSec-WebSocket-Protocol: lws-bidirectional-protocol\r\n\r\n";
 diag('A'); long f=sc(5,(long)"/tmp/wsreq",0,0), n;
 if(f<0)sc(1,10,0,0); n=sc(3,f,(long)req,sizeof(req)); sc(6,f,0,0); if(n<=0)sc(1,11,0,0);
 diag('B');
 long s=sc(281,2,1,0); struct sockaddr_in a={2,0xfa07,0x0100007f,{0}};
 if(s<0||sc(283,s,(long)&a,16)<0)sc(1,12,0,0);
 diag('C'); sc(4,s,(long)hs,slen(hs));
 struct {int fd;short events;short revents;} pf={s,1,0};
 long h=sc(168,(long)&pf,1,2000); diag(h>0?'D':'d');
 if(h<=0)sc(1,13,0,0); h=sc(3,s,(long)out,sizeof(out));
 if(h<=0)sc(1,13,0,0);
 diag('E');
 long off=0;
 while(off<n){
  unsigned z=(unsigned)(n-off); if(z>100)z=100;
  unsigned char opcode=off?0:1;
  if(send_fragment(s,opcode,off+z==n,req+off,z)<0)sc(1,14,0,0);
  off+=z;
 }
 pf.revents=0; h=sc(168,(long)&pf,1,2000); diag(h>0?'F':'f');
 long total=0; if(h>0)while(total<(long)sizeof(out)){long z=sc(3,s,(long)out+total,sizeof(out)-total);if(z<=0)break;total+=z;if(total>2)break;}
 long o=sc(5,(long)"/tmp/wsresp",0x241,0666);if(o>=0){sc(4,o,(long)out,total);sc(6,o,0,0);}sc(6,s,0,0);sc(1,0,0,0);
}

__attribute__((section(".init_array"), used))
static void (*init_entry)(void) = run;

void _start(void) { run(); }
