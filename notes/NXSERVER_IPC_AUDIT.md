# Vodafone `nxserver_ipc` audit

## Recovery

The live executable was recovered from:

```text
/usr/local/bin/nxserver/nxserver
```

Verified local artifact:

```text
path: vodafone-custom-page/uploads/nxserver
size: 161748 bytes
md5:  5e877a056ae3ee9ef7c66e96f60247be
type: ELF32 ARM EABI5 PIE, dynamically linked, stripped
```

The device-side MD5 and recovered-file MD5 match exactly.

## Live reachability

`/tmp/nxserver_ipc` is a root-owned Unix stream socket with mode `0666`.
A syscall-only ARM probe running as Netflix UID 1007 obtained:

```text
socket()  = 3
connect() = 0
poll(1s)  = 0
```

No bytes were sent. The absence of a greeting shows that the protocol is
client-first.

## Server process and configuration

The NSM parameters select verified client mode:

```text
-mode verified
```

No `-password FILE` option appears in `/etc/nsm/nxserver_params.cfg`.
The executable supports `NXCLIENT_SESSION` and `NXCLIENT_PASSWORD`, but neither
was exposed in the UID-1007 process environments examined.

## Wire framing

The receive path at virtual address `0x20678` first performs an exact 16-byte
read, then validates the header before reading the body. The four little-endian
32-bit header fields are used as:

```text
offset 0x00: total message length, including the 16-byte header
offset 0x04: client/session slot; 0xffffffff selects registration
offset 0x08: operation identifier
offset 0x0c: message type; normal RPC requests require value 0x20
```

Validation observed in the disassembly:

- total length must be greater than 15;
- total length must be below the preallocated receive-buffer limit;
- body reads use the validated `total_length - 16` value;
- normal client indices are checked against the session-table count;
- the requested operation must differ from the registered callback identifier;
- individual operations require exact expected body sizes before dispatch.

## Authentication and peer credentials

The connection setup at `0x152f8` calls:

```c
getsockopt(fd, SOL_SOCKET, SO_PEERCRED, &ucred, &length);
```

The examined path stores and compares `ucred.pid`. It does not compare the UID
or GID fields before associating a connection with an existing client record.
For a new connection, the PID is passed into the client creation path.

Registration uses header slot `0xffffffff`. The body must be at least 76 bytes.
The server searches its configured credential table and performs:

```text
memcmp(body + 0x00, credential + 0x00, 32)
memcmp(body + 0x20, credential + 0x20, 40)
```

Both comparisons must succeed, and the operation identifier must match the
credential record's registered operation identifier. Consequently, socket mode
`0666` alone does not grant an unauthenticated client a normal NEXUS session.

## Command-execution and memory-safety review

The executable does not import `system`, `popen`, or `execve`. Its interactive
stdin commands are limited to NEXUS administration such as listing clients,
printing heaps, killing/focusing a client, and changing heap security. They are
not exposed as shell commands through the Unix socket.

ELF hardening present:

- PIE
- non-executable stack
- GNU RELRO with immediate binding (full RELRO)
- stack-canary checks

The reviewed receive path does not expose a direct oversized-body write because
the total length is checked against the receive-buffer capacity before the body
read. The large RPC dispatcher also checks each operation's expected structure
size before calling its handler.

## Assessment

Confirmed security boundary: UID 1007 can connect to a root service and reach
its framing parser. No direct privilege escalation or command-injection path is
confirmed.

The most relevant remaining question is whether an existing authorized NEXUS
client session can be reused because association is PID-only, or whether a
credential/session record can be recovered from a same-UID client process.
Blind fuzzing is not recommended because this process owns the active video and
graphics platform and a crash would disrupt the box.

