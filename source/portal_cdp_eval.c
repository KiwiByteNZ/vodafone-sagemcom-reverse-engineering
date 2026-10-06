typedef unsigned short u16;
typedef unsigned int u32;

struct sockaddr_in { u16 family, port; u32 addr; unsigned char zero[8]; };

static long sc(long n, long a, long b, long c) {
    register long r7 __asm__("r7") = n;
    register long r0 __asm__("r0") = a;
    register long r1 __asm__("r1") = b;
    register long r2 __asm__("r2") = c;
    __asm__ volatile("svc 0" : "+r"(r0) : "r"(r7), "r"(r1), "r"(r2) : "memory");
    return r0;
}

static unsigned slen(const char *s) {
    unsigned n = 0;
    while (s[n]) n++;
    return n;
}

static long send_text(long s, const char *data, unsigned len) {
    static unsigned char frame[4104];
    static const unsigned char mask[4] = {0x12, 0x34, 0x56, 0x78};
    unsigned p = 0, i;
    frame[p++] = 0x81;
    if (len < 126) {
        frame[p++] = 0x80 | len;
    } else {
        frame[p++] = 0x80 | 126;
        frame[p++] = (len >> 8) & 255;
        frame[p++] = len & 255;
    }
    for (i = 0; i < 4; i++) frame[p++] = mask[i];
    for (i = 0; i < len; i++) frame[p++] = ((unsigned char)data[i]) ^ mask[i & 3];
    return sc(4, s, (long)frame, p);
}

static void run(void) {
    static char request[4096], response[8192];
    static const char handshake[] =
        "GET /devtools/page/ECD32F83-452C-4C52-B8DB-DC670354F715 HTTP/1.1\r\n"
        "Host: 127.0.0.1:9222\r\n"
        "Upgrade: websocket\r\n"
        "Connection: Upgrade\r\n"
        "Sec-WebSocket-Key: dGhlIHNhbXBsZSBub25jZQ==\r\n"
        "Sec-WebSocket-Version: 13\r\n\r\n";
    long f = sc(5, (long)"/tmp/cdp-request", 0, 0);
    long n, s, h, total = 0;
    struct sockaddr_in addr = {2, 0x0624, 0x0100007f, {0}};
    struct { int fd; short events; short revents; } pollfd;
    if (f < 0) sc(1, 10, 0, 0);
    n = sc(3, f, (long)request, sizeof(request));
    sc(6, f, 0, 0);
    if (n <= 0) sc(1, 11, 0, 0);
    s = sc(281, 2, 1, 0);
    if (s < 0 || sc(283, s, (long)&addr, 16) < 0) sc(1, 12, 0, 0);
    sc(4, s, (long)handshake, slen(handshake));
    pollfd.fd = s; pollfd.events = 1; pollfd.revents = 0;
    if (sc(168, (long)&pollfd, 1, 2000) <= 0) sc(1, 13, 0, 0);
    h = sc(3, s, (long)response, sizeof(response));
    if (h <= 0) sc(1, 14, 0, 0);
    f = sc(5, (long)"/tmp/cdp-handshake", 0x241, 0666);
    if (f >= 0) { sc(4, f, (long)response, h); sc(6, f, 0, 0); }
    if (send_text(s, request, (unsigned)n) < 0) sc(1, 15, 0, 0);
    pollfd.revents = 0;
    if (sc(168, (long)&pollfd, 1, 3000) > 0) {
        while (total < (long)sizeof(response)) {
            long z = sc(3, s, (long)response + total, sizeof(response) - total);
            if (z <= 0) break;
            total += z;
            if (total > 2) break;
        }
    }
    f = sc(5, (long)"/tmp/cdp-response", 0x241, 0666);
    if (f >= 0) { sc(4, f, (long)response, total); sc(6, f, 0, 0); }
    sc(6, s, 0, 0);
    sc(1, 0, 0, 0);
}

void _start(void) { run(); }
