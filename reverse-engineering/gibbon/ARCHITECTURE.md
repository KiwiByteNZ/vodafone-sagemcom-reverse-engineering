# Gibbon subsystem map

This directory indexes the Gibbon implementation embedded in `netflix.bin`.

## Corpus

- `gibbon-all-symbols.txt`: every exported symbol containing `netflix::gibbon::`.
- `gibbon-function-index.tsv`: address-sorted executable function index.
- `gibbon-class-summary.tsv`: function counts grouped by demangled owner.
- `gibbon-core-functions.tsv`: application, configuration, script, console, and main bridge functions.
- `gibbon-security-relevant.tsv`: first-pass security-sensitive function subset.
- `netflix-full-disassembly.txt`: complete ARM disassembly of the executable.

## Major components

### Application and configuration

- `GibbonApplication`: startup, location changes, reloads, injected JavaScript, resource management, script hashes, event loop, input and graphics lifecycle.
- `GibbonConfiguration`: command-line/configuration parsing, injected-JavaScript configuration, script hashes, engine selection, prefetch configuration.

### JavaScript execution

- `GibbonScriptBindings`: native object binding, script evaluation and loading, injected JavaScript, location changes, error pages, garbage collection and script-load accounting.
- `ThreadBridge` / `ThreadsBridge`: additional JavaScript engines and worker-like threads.

### Native API surface

- `GibbonBridge`: console dispatch, native evaluation, requests, timers, tasks, widgets, images, effects, text, player objects, disk/resource caches, cookies, fonts, profiling and injected JavaScript.
- `GibbonDebuggerBridge`: widget/resource/media instrumentation and debugger communication.
- Per-object bridges: `WidgetBridge`, `ImageBridge`, `TextBridge`, `EffectBridge`, `PlayerBridge`, `ScreenBridge`.

### Input parsers and decoders

- Resource and URL request preparation.
- JavaScript source evaluation.
- PNG, JPEG, WebP, DDS, KTX, SNG, Spine and platform surface decoders.
- Display-list and graphics-command deserialization.
- Font/text shaping and ICU processing.

### Console

- `GibbonConsole::handleCommand()` dispatches registered slash commands and the `!` external-program command.
- External programs go through `Process::launch()` and `execvp()` with inherited UID 1007.

## Priority security review order

1. `GibbonScriptBindings::{evaluate,loadScript,injectJS,setLocation}`
2. `GibbonBridge::{eval,runConsole,addInjectJS,startRequest,diskCacheInsert,loadFont}`
3. `ThreadBridge::startThread` and secondary script-engine bindings
4. resource request URL/scheme handling and script-hash validation
5. image/font/display-list parsers handling attacker-controlled buffers
6. debugger and GRPC bridge listeners
7. privileged service calls outside Gibbon and the `/dev/nexus` kernel boundary

The Gibbon process itself runs as UID 1007. A native Gibbon/JSC exploit initially produces UID-1007 code execution; root still requires a second boundary crossing.
