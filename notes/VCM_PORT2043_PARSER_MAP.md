# VCM TCP port 2043 parser map

## Scope and artifacts

This is an offline reachability map for the root-owned VCM listener on
`127.0.0.1:2043`. It is based on the exact binaries recovered from the box:

- `_usr_lib_libvcm_capture_sink.so`
- `libvcmtools.so.0`
- `libavformat.so.57.71.100`
- `libavcodec.so.57.89.100`

The recovered FFmpeg library hashes are recorded in
`PRIVILEGE_ESCALATION_STATUS.md`.

## End-to-end path

```text
UID 1007 client
  -> TCP 127.0.0.1:2043
  -> libvcm_capture_sink connection state machine
       mode byte 1
       bounded pathname read (maximum 4096 bytes; 4095 + NUL when full)
       open64(caller_path, O_RDONLY)
  -> VCM source callbacks
  -> vcm_transcoding_send()
       vcm_rb_write()
       avformat_open_input()
  -> custom AVIO/ring-buffer reader
  -> forced MP3 demuxer and ID3 handling
  -> av_read_frame()
  -> avcodec_send_packet()
  -> MP3 decoder
  -> avcodec_receive_frame()
  -> resample/FIFO/output path
```

## VCM/FFmpeg boundary

The FFmpeg calls are in `libvcmtools.so.0`, not directly in
`libvcm_capture_sink.so`.

`vcm_transcoding_init()`:

- `0x3574`: `avcodec_register_all()`
- `0x3578`: `av_register_all()`

The internal setup routine called by `vcm_transcoding_open()` creates the
input side:

- `0x32d8`: `av_find_input_format("mp3")`
- `0x32f4`: allocate a 4096-byte AVIO buffer
- `0x3324`: `avio_alloc_context(...)` with a custom ring-buffer read callback
- `0x3338`: `avformat_alloc_context()`
- sets the allocated custom `AVIOContext` on the format context

The literal passed to `av_find_input_format()` is at `.rodata` `0x5250` and
is exactly `mp3`. The adjacent `0x524c` bytes terminate the unrelated
`"%s.tmp"` string.

The custom AVIO callback is confirmed as `vcm_rb_read`: relocation
`R_ARM_GLOB_DAT` at `0x15ff0` resolves directly to exported function
`vcm_rb_read` (`0x23c0`).

`vcm_transcoding_send()`:

- `0x3858`: copies supplied source bytes into the VCM ring buffer
- `0x38b4`: calls `avformat_open_input()` once sufficient source data exists

`vcm_transcoding_get()`:

- `0x3adc`: `av_read_frame()`
- `0x3b30` and `0x3f5c`: `avcodec_send_packet()`
- `0x3bd0`: `avcodec_receive_frame()`
- later stages use `swr_convert()` and the audio FIFO APIs

Decoder setup uses `avcodec_find_decoder()`, `avcodec_alloc_context3()`, and
`avcodec_open2()`. The codec ID originates from the forced MP3 demuxer, so the
normal successful route selects the native MP3 decoder.

## Reachable parser components

The primary attacker-controlled native parsing surface is:

1. MP3 demuxer probe/header handling.
2. ID3v2 header, extended-header, frame, metadata, and chapter handling.
3. MPEG audio frame header and side-information parsing.
4. Xing/Info and VBRI metadata and seek-table handling.
5. MP3 packet parser and native MP3 decoder.
6. FFmpeg custom-AVIO buffering, seeking/error, and truncated-input paths.

The exact FFmpeg configuration confirms that the native `mp3` decoder is
enabled. It also enables AAC, H.264, DCA, FLAC, Vorbis, HEVC, MPEG-1/2 video,
PCM S16LE, Opus, VP8, and PNG decoders, but those are not selected by this
forced-MP3 route under ordinary operation.

## Not reachable through this route

Strings show many other demuxers compiled into `libavformat`, including WAV,
Matroska, MPEG-TS, image formats, RTSP, and others. They are not reachable by
format auto-detection here because VCM explicitly supplies the `mp3` input
format to `avformat_open_input()`.

A filename extension does not change this selection. Supplying a WAV, MP4,
Matroska, image, or transport stream to port 2043 therefore does not expose
that format's demuxer through this path.

## Security properties observed

- The pathname receive buffer is bounded and stack-canary protected.
- The recovered FFmpeg format library has a non-executable stack, GNU RELRO,
  and immediate binding (`BIND_NOW`).
- Input bytes still cross from UID 1007-controlled storage into an old MP3,
  ID3, parser, and decoder stack running in a UID 0 process.
- No command execution or privilege transition is inherent in this path; a
  concrete memory-safety defect in one of the reachable components would be
  required.

## Next offline audit targets

Priority order:

1. ID3v2 size arithmetic and frame-length transitions.
2. Xing/VBRI entry-count and seek-table allocation arithmetic.
3. Truncated MPEG audio headers and free-format frame-size handling.
4. MP3 decoder bit-reservoir and side-information bounds.
5. Custom AVIO behavior at ring-buffer wrap, EOF, and short-read boundaries.

Live malformed-input fuzzing is intentionally deferred until a specific,
reproducible offline condition is identified.
