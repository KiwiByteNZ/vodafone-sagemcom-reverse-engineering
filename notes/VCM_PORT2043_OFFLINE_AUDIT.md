# VCM port 2043 offline memory-safety audit

## Result

No memory-safety defect was reproduced in the reachable FFmpeg 3.3 MP3 path.
The completed deterministic campaign processed 5,110 malformed files with:

- 0 AddressSanitizer or UndefinedBehaviorSanitizer findings
- 0 process signals classified as crashes
- 0 three-second timeouts

This does not prove the target is defect-free, but it substantially lowers the
priority of port 2043 as a root-code-execution route. No malformed test case
from this campaign should be submitted to the live root process.

## Test target

The harness uses official FFmpeg tag `n3.3`, whose library versions match the
recovered target ABI (`libavformat` 57.71.100 and `libavcodec` 57.89.100). It is
built with GCC AddressSanitizer and UndefinedBehaviorSanitizer, with assembly
disabled. The enabled path is:

```text
av_find_input_format("mp3")
  -> avformat_open_input(..., forced_mp3, ...)
  -> avformat_find_stream_info()
  -> av_read_frame()
  -> avcodec_send_packet()/avcodec_receive_frame()
```

Artifacts are under `ffmpeg-3.3-asan/`:

- `mp3_asan_harness.c` and `mp3_asan_harness`
- `generate_mp3_corpus.py`
- `run_mp3_corpus.sh`
- `corpus/seed.mp3` and `corpus/generated/`
- `findings/`

## Corpus coverage

The structured cases cover compressed ID3v2.3 frames with contradictory
expanded sizes, malformed ID3v2.4 USLT and PRIV frames, truncations through
the first 512 bytes, corrupted Xing/Info/VBRI structures, and 5,000
deterministic insertion/deletion/bit/byte mutations of a valid MP3 seed. Input
size is capped at 128 KiB to avoid turning allocation-pressure behavior into a
workstation denial of service.

## Source-fix triage

Review of later fixes in the reachable source files found error-path cleanup,
leak, excessive-allocation/time-consumption, and signed-overflow hardening.
None supplied a demonstrated controlled overwrite or other code-execution
primitive in this route. The historical compressed-ID3 and malformed-USLT
cases were included in the structured corpus and did not trigger a sanitizer.

## Limits

The harness is x86-64 rather than the target's 32-bit ARM, and uses FFmpeg's
file protocol rather than VCM's custom 4096-byte ring-buffer AVIO callback.
The recovered libraries can also contain vendor changes not present in the
official tag. These differences leave room for target-only behavior, but do
not justify blind malformed-input testing against an essential root service.

## Decision

Deprioritize generic MP3 mutation on port 2043. Revisit only if static analysis
of the recovered ARM libraries identifies a concrete 32-bit arithmetic issue,
a vendor-only patch, or a bug dependent on the custom AVIO callback's partial
read/end-of-stream behavior.
