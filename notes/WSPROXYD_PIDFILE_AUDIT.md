# `ws-proxyd` PID-file audit

## Result

The recovered Vodafone `ws-proxyd` contains an unsafe predictable PID-file
write when its `-d` daemon option is enabled:

```c
if (fork() != 0)
    exit(0);
umask(/* value inherited in r0 */);
if (setsid() < 0)
    exit(1);
FILE *fp = fopen64("/var/run/ws-proxyd.pid", "w");
if (fp != NULL) {
    char pid[16];
    sprintf(pid, "%d", getpid());
    fputs(pid, fp);
    fclose(fp);
}
```

Relevant code is in `main` at virtual addresses `0x3528` through `0x35a4`.
The `fopen64` call is at `0x3564`; its arguments resolve to:

- pathname at `0x765c`: `/var/run/ws-proxyd.pid`
- mode at `0x7674`: `w`

The binary does not call `lstat`, `open(O_NOFOLLOW)`, `O_EXCL`, or `flock` for
this operation. `fopen64(..., "w")` follows a pre-existing symbolic link and
truncates the destination before writing the child PID as decimal text.

## Live filesystem context

On the audited box:

```text
/var/run -> ../tmp
/tmp     drwxrwxrwt root:root
/tmp/ws-proxyd.pid does not exist
```

Consequently, `/var/run/ws-proxyd.pid` resolves to a currently unclaimed name
in a world-writable sticky directory. Sticky-directory semantics do not prevent
UID 1007 from creating a new entry under that unused name.

## Security assessment

This is a confirmed symlink-following, predictable-file write in the binary.
It is not necessary to win a narrow TOCTOU window when the PID pathname is
absent: a pathname can be present before daemon startup. Actual privilege impact
still depends on all of the following:

1. NSM launches `ws-proxyd -d` with a privileged UID.
2. UID 1007 can cause the stopped module to start or restart after the pathname
   has been prepared.
3. A useful destination is writable by that privileged UID and remains on a
   writable filesystem.
4. Truncation followed by a short decimal PID is useful against that target.

No persistent or system target file was used during validation.

## Live canary validation (2026-10-04)

The installed binary is `/usr/bin/ws-proxyd`. A contained UID-1007 test used
loopback port `47894`, an empty disposable plugin directory, and this mapping:

```text
/tmp/ws-proxyd.pid -> /tmp/wsproxy-pid-canary
```

The canary was deliberately world-writable and initially contained `BEFORE`.
After daemon startup it contained `6992`, proving that the PID-file `fopen("w")`
followed the symlink and replaced the destination contents. Test PID 6992 was
then terminated, and the symlink, canary, and empty test directory were removed.

The live NSM configuration at `/etc/nsm/nsm_wsproxy.cfg` specifies:

```text
security.user  = middleware
security.group = middleware
command        = /usr/bin/ws-proxyd
port           = 7894
interface      = lo
```

Therefore this confirmed weakness is not a root-write primitive under the
current configuration. An NSM-launched instance would write as `middleware`.

## Evidence commands

```sh
arm-linux-gnueabihf-objdump -d \
  --start-address=0x3500 --stop-address=0x3634 ws-proxyd
xxd -g1 -s 0x7650 -l 80 ws-proxyd
arm-linux-gnueabihf-readelf -Ws ws-proxyd
```
