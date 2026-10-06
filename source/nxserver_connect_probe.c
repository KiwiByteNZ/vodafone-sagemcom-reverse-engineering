typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

void *memcpy(void *dst,const void *src,u32 n){u8*d=dst;const u8*s=src;while(n--)*d++=*s++;return dst;}

static long sc(long n,long a,long b,long c){
 register long r7 __asm__("r7")=n,r0 __asm__("r0")=a,r1 __asm__("r1")=b,r2 __asm__("r2")=c;
 __asm__ volatile("svc 0":"+r"(r0):"r"(r7),"r"(r1),"r"(r2):"memory"); return r0;
}
static u32 slen(const char*s){u32 n=0;while(s[n])n++;return n;}
static void out(const char*s){
#ifdef TCP1988
 const char *path="/tmp/tcp1988_probe.log";
#else
 const char *path="/tmp/nx_probe.log";
#endif
 long f=sc(5,(long)path,0x441,0666);if(f>=0){sc(19,f,0,2);sc(4,f,(long)s,slen(s));sc(6,f,0,0);}
}
static void hex(char tag,long v){char b[16];u32 p=0;b[p++]=tag;b[p++]='=';for(int i=7;i>=0;i--){u8 n=(v>>(i*4))&15;b[p++]=n<10?'0'+n:'a'+n-10;}b[p++]='\n';b[p]=0;out(b);}
static void dump(const u8 *v,u32 n){
 char b[3*64+2];u32 p=0;if(n>64)n=64;
 for(u32 i=0;i<n;i++){u8 x=v[i];b[p++]="0123456789abcdef"[x>>4];b[p++]="0123456789abcdef"[x&15];b[p++]=' ';}
 b[p++]='\n';b[p]=0;out(b);
}

static void run(void){
#ifdef TCP1988
 struct {u16 family;u16 port;u32 address;u8 zero[8];} a={2,0xc407,0x0100007f,{0}};
#else
 struct {u16 family;char path[108];} a={1,"/tmp/nxserver_ipc"};
#endif
 struct {int fd;short events;short revents;} p;
 u8 b[64];
#ifdef TCP1988
 long s=sc(281,2,1,0);hex('s',s);if(s<0)return;
#else
 long s=sc(281,1,1,0);hex('s',s);if(s<0)return;
#endif
#ifdef TCP1988
 long q=sc(283,s,(long)&a,16);hex('c',q);if(q<0){sc(6,s,0,0);return;}
 const char req[]="HEAD / HTTP/1.0\r\n\r\n";
 q=sc(4,s,(long)req,sizeof(req)-1);hex('w',q);
#else
 long q=sc(283,s,(long)&a,2+slen(a.path)+1);hex('c',q);if(q<0){sc(6,s,0,0);return;}
#endif
 p.fd=s;p.events=1;p.revents=0;
#ifdef TCP1988
 for(int i=0;i<16;i++){
  p.revents=0;q=sc(168,(long)&p,1,500);hex('p',q);hex('e',p.revents);
  if(q<=0 || !(p.revents&1))break;
  q=sc(3,s,(long)b,sizeof(b));hex('r',q);if(q>0)dump(b,(u32)q);else break;
 }
#else
 q=sc(168,(long)&p,1,1000);hex('p',q);hex('e',p.revents);
 if(q>0 && (p.revents&1)){q=sc(3,s,(long)b,sizeof(b));hex('r',q);if(q>0)dump(b,(u32)q);}
#endif
 sc(6,s,0,0);out("done\n");
}
__attribute__((section(".init_array"),used)) static void(*init_entry)(void)=run;
void _start(void){run();sc(1,0,0,0);}
