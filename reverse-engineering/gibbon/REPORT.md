# Netflix/Gibbon reverse-engineering notes

## Verified execution model

- `Console::Command::Arguments::parse()` tokenizes console input.
- The `!` console command reaches `netflix::Process::launch()`.
- `Process::launch()` calls `fork()`, connects pipes with `dup2()`, and finally calls `execvp(argv[0], argv)`.
- It does **not** implicitly invoke a shell. Shell syntax such as `;`, redirects, and pipelines only works when explicitly passed through `/bin/sh -c '...'`.
- The spawned process inherits the Netflix/Gibbon process credentials (observed UID/GID 1007). This is command execution, but not a root transition.

There are exactly two callers of `Process::launch()` in the complete executable:

1. `Console::handleCommand()` implements the explicit `!` external-program command.
2. `ProcessFilter::finish()` implements the console's `|` process filter.

The second path explains `/cat /etc/hostname|/bin/echo PIPE_OK`: the console parser recognizes `|` itself and launches `/bin/echo` as a process filter. It is not a shell pipeline, and shell metacharacters remain inert unless the launched program is explicitly `/bin/sh -c`.

## GibbonBridge native methods

### `runConsole`

`GibbonBridge::runConsole(const Variant&)` requires an object with this schema:

```javascript
{ command: "..." }
```

It parses the `command` value with the same console parser and dispatches it to the console handler. This gives privileged Gibbon JavaScript the same UID-1007 command path as the Telnet console.

As a security finding, exposing `runConsole()` to code that is not supposed to execute native programs becomes a direct command-injection/RCE boundary. A structurally valid invocation is:

```javascript
nrdp.gibbon.runConsole({command:"!/bin/sh -c 'id'"})
```

This reaches a real shell, but that shell still inherits UID 1007.

### `eval`

`GibbonBridge::eval(const Variant&)` requires these string fields:

```javascript
{ file: "source-label", script: "javascript source" }
```

This is native-backed JavaScript evaluation. It is a useful bridge-context probe but is not, by itself, an OS privilege transition.

The lower-level `GibbonScriptBindings::evaluate()` path passes the supplied buffer and source URL directly to `ScriptEngine::evaluate()`. Script-hash validation is not performed inside this function; validation belongs to the ordinary resource-loading path. Consequently, `GibbonBridge::eval()` is a deliberate direct-evaluation path that bypasses normal script-resource hash checking once the caller already has access to `nrdp.gibbon`.

### `addInjectJS`

The native implementation recognizes `js`, `options`, `url`, `persist`, and `add`. It can call `NrdApplication::writeSystemConfiguration()` and `GibbonConfiguration::addInjectJS()`, so it is a persistence mechanism for injected JavaScript. Its persistence remains under the Gibbon/Netflix security context unless a separate privileged boundary is crossed.

## Ruled-out lead

The apparent second `fork()`/`execl()` path near `0x86a1bc` is libcurl's NTLM winbind helper. It inherits its caller's credentials and is not a root launcher.

## Security properties

- ARM 32-bit PIE
- NX stack
- GNU RELRO with `BIND_NOW`
- Stack protector imported

## Current privilege boundary

No verified root transition has been found in the Gibbon command path. A root result requires one of:

- memory corruption in a native bridge or old JavaScriptCore;
- a command-capable privileged daemon/IPC endpoint;
- a vulnerable kernel or world-accessible device interface.

The world-writable `/dev/nexus` interface remains a candidate, but its known ioctls currently look like Broadcom MMIO register access rather than proven arbitrary kernel memory access.

## Full Gibbon inventory

The executable exports 5,947 `netflix::gibbon::` symbols. Of these, 4,660 are executable strong or weak functions grouped into 2,053 demangled owners. The generated architecture and function indexes are documented in `ARCHITECTURE.md`.
