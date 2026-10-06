typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

static long sc(long n,long a,long b,long c){
 register long r7 __asm__("r7")=n,r0 __asm__("r0")=a,r1 __asm__("r1")=b,r2 __asm__("r2")=c;
 __asm__ volatile("svc 0":"+r"(r0):"r"(r7),"r"(r1),"r"(r2):"memory"); return r0;
}
static u32 slen(const char*s){u32 n=0;while(s[n])n++;return n;}
static void out(const char*s){
 const char *p="/tmp/vcm2043_probe.log";
 long f=sc(5,(long)p,0x441,0666); if(f>=0){sc(19,f,0,2);sc(4,f,(long)s,slen(s));sc(6,f,0,0);}
}
static void hex(char tag,long v){char b[12];u32 p=0;b[p++]=tag;b[p++]='=';for(int i=7;i>=0;i--){u8 n=(v>>(i*4))&15;b[p++]=n<10?'0'+n:'a'+n-10;}b[p++]='\n';b[p]=0;out(b);}

static void run(void){
 struct {u16 family;u16 port;u32 address;u8 zero[8];} a={2,0xfb07,0x0100007f,{0}};
 const char path[]="/tmp/vcm2043_canary.txt";
 struct {int fd;short events;short revents;} p;
 char b[32];
 long s=sc(281,2,1,0); hex('s',s); if(s<0)return;
 long q=sc(283,s,(long)&a,16); hex('c',q); if(q<0){sc(6,s,0,0);return;}
 u8 mode=1; q=sc(4,s,(long)&mode,1); hex('m',q);
 /* Keep mode and pathname in distinct reads in the event-driven server. */
 struct {long sec;long nsec;} ts={0,200000000}; sc(162,(long)&ts,0,0);
 q=sc(4,s,(long)path,sizeof(path)-1); hex('w',q);
 sc(290,s,1,0); /* shutdown(SHUT_WR) */
 p.fd=s;p.events=1;p.revents=0;q=sc(168,(long)&p,1,1500);hex('p',q);hex('e',p.revents);
 if(q>0&&(p.revents&1)){q=sc(3,s,(long)b,sizeof(b));hex('r',q);}
 sc(6,s,0,0);out("done\n");
}
__attribute__((section(".init_array"),used)) static void(*init_entry)(void)=run;
void _start(void){run();sc(1,0,0,0);}
