# NSM `nsm_plugin_start` audit

## Scope

Determine whether an existing unprivileged Vodafone-box context (UID 1006 or
UID 1007) can abuse the root-owned NSM IPC service to launch an uncontrolled
command, select an unintended execution identity, or otherwise obtain a
privileged shell.

This is a static/offline audit unless a test is explicitly identified as safe
and non-destructive. Do not repeat already completed live tests merely to
confirm the history below.

## Recovered history

- The central SC-bus socket is `/tmp/sc_bus/sc_bus`.
- `change_privileges` assigns `/tmp/sc_bus` to UID/GID `1004:1004` with mode
  `0750`.
- A custom client already exists at `nsm_dbus_client.c`.
- That client authenticates with D-Bus `AUTH EXTERNAL 31303037`, representing
  UID 1007, and requests the bus name `sc.netflix.client`.
- It calls method `nsm_plugin_start` on interface `sc.nsm_msg`, destination
  `scmsg.main_nsm`, with plugin name `telnet`.
- TCP 9536 provides the Netflix/Gibbon debug console under UID 1007. Later
  reboot testing showed this port is available even when the custom client has
  not executed, so its availability is not proof that `nsm_plugin_start`
  succeeded.
- The current client writes `/tmp/nsm_client.log` before and after its D-Bus
  operations. Live execution was subsequently confirmed through the ARM
  in-memory execution primitive described below.

## What the prior test proves

- Static protocol reconstruction shows how UID 1007 would authenticate and
  invoke the method, but the saved evidence does not prove the client actually
  ran. The earlier inference from port 9536 was incorrect.

## What was not previously audited

- Whether arbitrary plugin names are accepted.
- Whether the supplied name is strictly matched against modules preloaded from
  `/etc/nsm/nsm.cfg`.
- Whether any request field can influence the configured executable, argument
  vector, environment, working directory, UID, GID, capabilities, or namespace.
- Whether plugin names permit path traversal, prefix matching, truncation, or
  embedded-NUL confusion.
- Whether authorization differs for UID 1006 and UID 1007.
- Whether another IPC method can modify module configuration before calling
  `nsm_plugin_start`.
- Whether `nsm_proc_exec` invokes `execvpe` with any caller-controlled command,
  arguments, or environment.

## Relevant recovered artifacts

- `vodafone-custom-page/uploads/nsm`
- `nsm_dbus_client.c`
- `vodafone-custom-page/uploads/change_privileges`

The recovered `nsm` binary is dynamically linked with
`libnsm-plugins.so.1`. Relevant symbols include:

- `nsm_plugin_start_register_request`
- `nsm_module_start`
- `nsm_modules_find`
- `nsm_proc_exec`
- `nsm_container_is_authorized`
- `nsm_module_load_security`
- `nsm_config_set`

It imports `fork`, `setuid`, and `execvpe`. Its default configuration path is
`/etc/nsm/nsm.cfg`, and it contains the configuration key `command`.

## Related `change_privileges` result

`change_privileges` is not a generic privilege-changing command and does not
consume command-line arguments. It applies compiled-in ownership and mode rules
to fixed paths. Its use of `stat`, `chmod`, and `chown` follows symbolic links,
leaving a conditional boot-time symlink/TOCTOU lead. Exploitability has not been
shown because an unprivileged process must be able to control a listed path
while the root helper is still running.

## Audit plan

1. Identify the server-side `nsm_plugin_start` request callback.
2. Trace request fields into module selection.
3. Prove exact-name versus partial/path-based lookup behavior.
4. Trace caller identity and authorization checks.
5. Trace the selected module through `nsm_module_start` into `nsm_proc_exec`.
6. Identify every source of the `execvpe` filename, argument vector, and
   environment.
7. Record whether any field reachable from UID 1006/1007 can alter execution.

## Current status

Historical reconstruction complete. Server-side static analysis is in
progress.

## Static results

The server callback for `nsm_plugin_start` walks the already-instantiated
module list. For a normal type-name request, it obtains the configured module
type and performs an exact `strcmp` against the request string. It does not use
prefix matching and does not treat the request as a filename. Unknown names do
not reach process execution.

The callback itself does not validate the D-Bus sender UID or call
`nsm_container_is_authorized`. (The nearby cgroup-configuration callback does
perform such an authorization check.) A matched, stopped module is passed to
`nsm_module_start`, which calls the start function already stored in the
module's compiled plugin operations. The request cannot directly replace this
function or the configured command.

`nsm_proc_exec` ultimately calls `execvpe`. Its executable and argument vector
come from settings loaded for the selected, preconfigured module. No request
field from `nsm_plugin_start` has been found flowing into the executable,
arguments, or environment.

## Live configuration results

The Gibbon `/cat` command provided read-only access to `/etc/nsm/nsm.cfg` and
its included configuration files. Important entries are:

- NSM itself runs as `root:root`.
- The plugin path is `/tmp/nsm/plugins`.
- `telnet` runs as `root:root` with command `/usr/sbin/telnetd`, port `23`, and
  shell `/bin/ash`.
- `nxserver`, `klog`, `scnet`, `ntp_symlink`, `bioman`, `sysinfod`,
  `bgdld_daemon`, and `mum_daemon` are configured as root services.
- A built-in `test` module is enabled with command `/bin/ls` and no explicit
  per-service security block.
- Other service commands and options are fixed configuration values.

The reconstructed UID-1007 client is capable of sending
`nsm_plugin_start("telnet")`, and the handler has no caller authorization
check. NSM therefore exposes a privilege-boundary violation if that client is
executed in the UID-1007 context. Live delivery/execution remains to be proven.

External checks currently see TCP port 23 as filtered/unreachable from the
workstation. Therefore a usable root shell has not yet been established. The
next problem is reachability: verify whether telnetd listens only locally or is
blocked by firewall policy, then establish a non-destructive local transport
to it.

## Telnet plugin argument reconstruction

The implementation was recovered from the live box at
`/usr/lib/libnsm-plugins.so.1` (the earlier `/usr/local/lib` path was wrong).
The verified artifact is
`vodafone-custom-page/uploads/libnsm-plugins.so.1.raw`: 578,240 bytes,
SHA-256 `ddece684487b95a79c0d1680bfbdd6e451688c9c9485970a2ef589fa80d2e133`.

The settings loader reads `enable`, `command`, `shell`, `port`, and
`interface`. With the live configuration's empty interface, the start routine
constructs this exact argument vector:

```
/usr/sbin/telnetd -F -p 23 -l /bin/ash
```

A non-empty interface inserts `-b <interface>` before `-p`. The executable
passed to `nsm_proc_exec` is the configured command and its fixed process label
is `host-main`; the IPC request supplies none of these values.

The empty-interface path skips `nsm_network_bind` and starts telnetd directly,
so this plugin is not restricting it to loopback. A fresh connection attempt
from inside Gibbon to `127.0.0.1:23` nevertheless returned `ECONNREFUSED`,
while the workstation sees TCP 23 filtered. The daemon is therefore not
currently running. The next live step is to obtain code execution in UID 1007,
run the client while capturing its status, and then observe telnetd's behavior.

## Post-reboot portal reachability

The Neon/Lightbox launcher was corrected so it no longer opens a `file://`
popup that caused the application manager to hide the page after six seconds.
The page now remains alive and its DevTools target is reachable from Gibbon
through `127.0.0.1:9226` (tested target
`149A9DD5-9BAC-4FAD-9143-15FB69512DF3`).

This external-application target exposes `oipfObjectFactory`, but not `wtv`,
`sagem`, `Global`, or the portal JSON-RPC wrapper. Its configuration object has
the previously audited `scExtraCmd`; its application object exposes lifecycle
and wakeup methods only. The advertised OIPF `DownloadManager` factory throws
"not supported by this device". This restores a stable UID-1006 browser audit
channel, but it cannot directly invoke `wtv.jsonRpcMiddlewareManager` or
execute the NSM client payload.

## Confirmed Gibbon shell and IPC delivery constraints (2026-10-03)

The Gibbon console `/cat` handler is command-injectable. This form was verified
by creating and reading back `/tmp/codex_exec_marker`:

```
/cat /dev/null | /bin/sh -c 'COMMAND'
```

Commands inherit Gibbon's UID 1007; this primitive does not itself change UID.
The console `!` external-program path is unnecessary and can block a console
connection. There is no standalone `id` command and the installed BusyBox does
not provide an `id` applet.

All writable mounts observed in `/proc/mounts` are `noexec`. A transferred copy
of `nsm_dbus_client` therefore cannot be executed from `/tmp`; invoking it via
`/lib/ld-linux-armhf.so.3` also fails when the loader attempts an executable
mapping from that mount.

`/usr/bin/gdbus` and `/usr/bin/dbus-send` are installed, but independent CLI
invocations do not reproduce the saved client's required same-connection
sequence. A `dbus-send` attempt used four separate arguments (wrong signature)
and returned `NoReply`. A later GDBus call correctly supplied one `(uius)`
struct but did not first acquire `sc.netflix.client` on the same connection;
the SC bus closed the connection and TCP 23 did not start. `/proc/net/tcp`
showed no port-23 listener after that call.

`/usr/bin/socket_client` is not a raw socket relay. Static analysis of the
recovered binary shows that it prepends a proprietary eight-byte header before
its payload, so it cannot carry the raw D-Bus authentication/message stream.
The installed `/usr/bin/sc-glib_msg/*` programs expose fixed GLib test cases
only and do not accept an arbitrary bus destination and method.

The remaining live requirement is exact delivery on one connection:
`AUTH EXTERNAL 31303037`, `BEGIN`, D-Bus `Hello`,
`RequestName("sc.netflix.client")`, then the `(uius)`
`nsm_plugin_start("telnet")` message. Do not treat a standalone GDBus call or
external port filtering as proof that this sequence ran.

## ARM in-memory NSM client execution (2026-10-04)

`vodafone-nsm-ddexec-probe.sh` now loads a flat, syscall-only ARM build of the
client into a disposable BusyBox process. A 36-byte bootstrap calls `mprotect`
for the injected data/BSS pages and enters the client. The harmless probe uses
the nonexistent six-byte plugin name `codexx`, not `telnet`.

The initial live client log was:

```text
s=00000003
c=00000000
a=00000025
h=00000000
n=00000000
t=ffffffe0
```

This confirmed socket creation, connection to `/tmp/sc_bus/sc_bus`, and a
37-byte authentication response. The bus rejected the original `Hello`
because its header-field length incorrectly included trailing eight-byte
alignment padding. `hello()` was corrected to store the unpadded field-array
length.

The corrected harmless `codexx` probe then logged:

```text
s=00000003
c=00000000
a=00000025
h=00000104
n=0000010a
t=000000b7
```

The client received 260-byte and 266-byte replies to `Hello` and
`RequestName`, respectively, and wrote the complete 183-byte NSM method call
without error. This proves that same-connection authentication, bus-name
acquisition, and NSM request delivery through the ARM in-memory primitive now
work. The probe requested nonexistent plugin `codexx`, so it started no
service.

Artifacts:

- `nsm_dbus_probe.elf`
- `nsm_dbus_probe.bin`
- `nsm-ddexec-bootstrap.s`
- `nsm-ddexec-bootstrap.bin`
- `vodafone-nsm-ddexec-probe.sh`
