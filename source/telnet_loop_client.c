#include <arpa/inet.h>
#include <fcntl.h>
#include <string.h>
#include <sys/select.h>
#include <sys/socket.h>
#include <unistd.h>

int main(void) {
    int s = socket(AF_INET, SOCK_STREAM, 0);
    if (s < 0) return 10;
    struct sockaddr_in a;
    memset(&a, 0, sizeof(a));
    a.sin_family = AF_INET;
    a.sin_port = htons(23);
    a.sin_addr.s_addr = htonl(0x7f000001);
    if (connect(s, (struct sockaddr *)&a, sizeof(a)) < 0) return 11;

    const char cmd[] = "\r\n/bin/cat /proc/self/status\r\nexit\r\n";
    write(s, cmd, sizeof(cmd) - 1);
    int out = open("/tmp/telnet23_result", O_WRONLY | O_CREAT | O_TRUNC, 0666);
    if (out < 0) return 12;

    for (int rounds = 0; rounds < 8; rounds++) {
        fd_set rfds;
        FD_ZERO(&rfds);
        FD_SET(s, &rfds);
        struct timeval tv = {1, 0};
        if (select(s + 1, &rfds, 0, 0, &tv) <= 0) continue;
        char buf[1024];
        int n = read(s, buf, sizeof(buf));
        if (n <= 0) break;
        write(out, buf, n);
    }
    close(out);
    close(s);
    return 0;
}
