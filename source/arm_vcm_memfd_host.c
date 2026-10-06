/* ARMv7 syscall-only helper: copy the VCM backend into an executable memfd
 * and keep the descriptor alive for dlopen via /proc/<pid>/fd/<fd>. */
typedef unsigned int u32;

static inline int sc0(int n) { register int r7 asm("r7")=n; register int r0 asm("r0"); asm volatile("svc 0":"=r"(r0):"r"(r7):"memory"); return r0; }
static inline int sc1(int n,int a) { register int r7 asm("r7")=n; register int r0 asm("r0")=a; asm volatile("svc 0":"+r"(r0):"r"(r7):"memory"); return r0; }
static inline int sc2(int n,int a,int b) { register int r7 asm("r7")=n; register int r0 asm("r0")=a; register int r1 asm("r1")=b; asm volatile("svc 0":"+r"(r0):"r"(r1),"r"(r7):"memory"); return r0; }
static inline int sc3(int n,int a,int b,int c) { register int r7 asm("r7")=n; register int r0 asm("r0")=a; register int r1 asm("r1")=b; register int r2 asm("r2")=c; asm volatile("svc 0":"+r"(r0):"r"(r1),"r"(r2),"r"(r7):"memory"); return r0; }

static int append_dec(char *p, int v) {
  static const int powers[]={1000000000,100000000,10000000,1000000,100000,
                            10000,1000,100,10,1};
  int i, n=0, started=0, digit;
  for(i=0;i<10;i++) {
    digit=0;
    while(v>=powers[i]) { v-=powers[i]; digit++; }
    if(digit || started || i==9) { p[n++]=(char)('0'+digit); started=1; }
  }
  return n;
}

void _start(void) {
  static const char src[]="/mnt/datafs/cosmocat/libvcm_backend_codex.so";
  static const char out[]="/tmp/vcm-memfd-path";
  static const char name[]="vcm-codex";
  char buf[512], path[64];
  int in, fd, n, w, o, pos=0, pid;

  in=sc3(5,(int)src,0,0);                 /* open */
  fd=sc2(385,(int)name,0);                /* memfd_create */
  if (in<0 || fd<0) for(;;) sc1(162,(int)(u32[2]){60,0});
  while ((n=sc3(3,in,(int)buf,sizeof(buf)))>0) {
    o=0; while (o<n) { w=sc3(4,fd,(int)buf+o,n-o); if(w<=0) break; o+=w; }
    if(o<n) break;
  }
  sc1(6,in);
  pid=sc0(20);
  path[pos++]='/'; path[pos++]='p'; path[pos++]='r'; path[pos++]='o'; path[pos++]='c'; path[pos++]='/';
  pos+=append_dec(path+pos,pid);
  path[pos++]='/'; path[pos++]='f'; path[pos++]='d'; path[pos++]='/';
  pos+=append_dec(path+pos,fd); path[pos++]='\n';
  o=sc3(5,(int)out,577,0600);             /* O_WRONLY|O_CREAT|O_TRUNC */
  if(o>=0) { sc3(4,o,(int)path,pos); sc1(6,o); }
  for(;;) { u32 ts[2]={60,0}; sc2(162,(int)ts,0); }
}
