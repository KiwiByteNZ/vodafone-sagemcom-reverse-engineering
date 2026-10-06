# Gibbon console input audit

## Live inventory

The live `/help` output on the Vodafone box exposes 58 slash commands. Detailed
second-level help was collected in `/tmp/gibbon-all-help-live.txt` on the audit
workstation.

## Native process-execution result

The complete Gibbon executable contains one general `execvp` call, inside
`netflix::Process::launch()`. Static cross-references identify exactly two
console-controlled callers:

1. The explicit `!` external-program command.
2. `ProcessFilter::finish()`, reached through the console `|` filter syntax.

No `system()` or `popen()` import/path exists in this executable. Therefore the
slash commands do not hide a third independent shell-command sink. The verified
`/cat /dev/null | /bin/sh -c 'COMMAND'` form is the second path above, not a
shell pipeline implemented by `/cat`.

Both process-launch paths inherit Gibbon's UID 1007.

## Other high-control inputs

These are security-relevant but do not independently launch an OS command:

- `/env [key] [value]` calls `setenv` for the Gibbon process. It can influence
  later `execvp` launches (for example `PATH`) but does not change credentials.
- `/commandline <key> [value]` feeds the internal configuration-option parser.
  Its exposed keys include `define-environment`, `config-file`, `logfile`,
  `inject-js`, `ui-url`, `boot-url`, `appboot-url`, `telnet-port`,
  `pipe-thread-port`, and several writable path settings. Static inspection of
  `CommandLineCommand::invoke()` finds configuration parsing/dumping, not a
  process-launch call.
- `/logfile [filename]` reopens a caller-selected path as the log file, giving a
  UID-1007 file-write surface subject to normal filesystem permissions.
- `/reload <url>` passes a caller-selected URL into Gibbon navigation/loading.
  This can load/evaluate application content in Gibbon's context but does not
  invoke a shell.
- `/cat <file>` is an arbitrary UID-1007 file-read surface. Its command
  execution behavior comes only from appending the separate `|` process-filter
  syntax.
- `/source`, `/data`, `/diskstore`, `/resources`, and `/scriptengine` expose
  inspection or internal-engine operations. Their empty invocations reveal no
  additional command parser, and none cross-references `Process::launch()`.

## Operational conclusion

Further root work should focus on a privileged IPC/service boundary or a
memory-safety issue. Enumerating additional slash commands will not produce a
third root-capable command-injection path: all native commands launched from
Gibbon retain UID 1007.
