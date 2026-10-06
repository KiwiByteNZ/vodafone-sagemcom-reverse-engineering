# `/usr/bin/middleware` static audit

## Artifact

- Device path: `/usr/bin/middleware`
- Recovered path: `vodafone-custom-page/uploads/middleware`
- Size: 67,044 bytes
- MD5: `0d8fc217dec4d13f5cfdef39f2cb4f92` (matches the device)
- ARM EABI, PIE (`ET_DYN`), stripped but with dynamic function names
- Full RELRO/BIND_NOW, NX stack, stack-canary references

## Role

The executable is an orchestrator for the UID `middleware` application. It does
not contain the port-3030 route table. It initializes the event loop and then
starts functionality supplied by a large set of shared libraries.

The executable has no imports for `system`, `popen`, `execve`, or `dlopen`.
Consequently there is no direct shell-command sink in this file.

## Startup behavior

`main` supports:

- `-d`: daemonize
- `-p PATH`: PID-file path (default `/var/run/middleware.pid`)
- `-v LEVEL`: verbosity 0 through 5
- `-h`: help

It initializes `jioloop`, ignores/handles signals 5, 6, and 13, initializes
LAPIN, calls `start_middleware`, sets the process name to `mw_ioloop`, and enters
the event loop.

When started as root, `main` calls `drop_root_privileges("middleware", 1,
{CAP_SYS_TIME})`. That function resolves the middleware user/group, installs
supplementary groups, uses `setresgid` and `setresuid` for all three IDs, checks
the resulting IDs, and reduces the capability sets. On this box NSM normally
starts the process as UID 1006 with the broader capabilities configured in
`/etc/nsm/nsm_middleware.cfg`, so this root-start fallback is not the live launch
path.

## Initialization order

`start_middleware` initializes these major components:

1. DirectFB, logging, MAPI, and the Sagemcom bus handshake
2. custom platform layer, CFS, stbtools, NVM configuration and tracing
3. RSM, power, front-panel/custom events, CAS, timezone and time manager
4. AV player, network utilities/protocol, graphics, DVB and PVR
5. JSX/browser-facing APIs for RSM, network, AVIO, AV player, MAPI, DVB, CAS,
   power and custom services

The port-3030 server is supplied through `libwebservices.so.1.1`; the executable
does not call the `wctl_*` route functions directly.

## Exported local attack surface

The binary exports a broad CFS filesystem API:

- `CFS_open`, `CFS_read`, `CFS_write`, `CFS_seek`, `CFS_close`
- `CFS_copy`, `CFS_move`, `CFS_rm`, `CFS_mkdir`, `CFS_rmdir`
- recursive copy/delete and background variants
- size, type, stat and free-space helpers

It also exports NVM configuration, time-management and timezone functions.
These are not proven remotely reachable from HTTP. Their significance is that
an unsafe handler in a loaded API library could reach filesystem and
capability-backed operations without launching a command.

`jail_create` is also present and can construct a chroot using tmpfs/proc and
bind mounts for device/library/data paths, but there is no direct call to it
from `main` or `start_middleware` in this build.

## Best next reverse-engineering targets

To discover additional remotely reachable operations, analyze route- or
RPC-owning libraries rather than this launcher:

1. `libws_json_service.so` and `libcson_jsonrpc.so` — JSON request dispatch
2. `libwebservices.so.1.1.1` — known port-3030 HTTP routes
3. `librsm.so.2.3` and `librsm_api_jsx.so.2.3` — remote-service operations
4. `libcustom_voda4k.so.2.2` — product-specific initialization and callbacks
5. `libnetproto.so.2.2` and its JSX API — network-facing protocol handlers

## Generated artifacts

Static output is under `reverse-webservices/`:

- `middleware.disassembly.txt`
- `middleware-readelf-full.txt`
- `middleware.relocations.txt`
- `middleware.strings.txt`
- `middleware-startup.asm`
- `middleware-privileges.asm`
- `middleware-lapin.asm`
- `middleware.dependencies.txt`
