# Files intentionally kept out of Git

The complete local archive contains sensitive and bulky evidence that should
not be pushed to a normal Git remote:

- packet captures and traffic-derived logs;
- additional device configuration exports;
- TLS private keys and test certificates;
- recovered executables, shared libraries, and firmware data;
- compiled proof-of-concept payloads;
- the generated 114 MB Gibbon/Netflix full disassembly;
- media samples and fuzzing corpora.

Use the local archive inventory when those artifacts are needed for authorized
offline analysis.

The owner's activation-token reference remains only in the private archive.
The reusable application catalogue is included in the Git repository.
