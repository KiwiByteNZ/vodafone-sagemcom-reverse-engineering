# Vodafone VODA4K local API (`192.168.100.11:3030`)

Observed on Sagemcom model `VODA4K`, release `5.1.5710.06iw(nz)`, internal API version `2.7.0`.

The server identifies itself as `STB WebService`. It generally disables caching; many JSON responses include `Access-Control-Allow-Origin: *`. `HEAD` and `OPTIONS` return `405` for nearly every route and do not advertise an `Allow` header. On 2026-10-04, the live `/system/requests` response still reported the same 23 active paths listed below.

## Endpoint inventory

| Endpoint | GET result | Observed body/behavior |
|---|---:|---|
| `/logs/debug` | 200 | Empty body |
| `/logs/streaming` | 200 | Empty `text/plain` body |
| `/authorization/token` | 200 | Creates a pending authorization request and returns `{code, expiration}`; not a passive read |
| `/authorization/users` | 200 | `{entries, count}` with pending users, codes, expiry, client metadata, age and parental-control state |
| `/control/rcu` | 405 | POST is supported but `{}` and tested invalid field names return 400 |
| `/control/volume` | 200 | GET currently returns empty `{entries, count}`; POST validates an unknown schema and rejects invalid bodies with 400 |
| `/events` | 200 | `{next_stream_position, size, entries}`; `?stream_position=CURSOR` performs long polling |
| `/eit/epgdb` | 404 | Advertised but unavailable in the current state/build |
| `/eit/present` | 400 | GET-only route requiring unidentified query parameters |
| `/eit/follow` | 400 | GET-only route requiring unidentified query parameters |
| `/signal/info` | 400 | GET-only route requiring unidentified query parameters |
| `/schedules/recordings` | 500 | Empty response; likely unavailable backend/state |
| `/network/interfaces` | 200 | Interface list; confirms `wlan0` at `192.168.50.181/24` |
| `/system/version` | 200 | Version/manufacturer/model/release JSON |
| `/system/parentalcode` | 200 | `{"pin_left":0}` during testing |
| `/system/logo` | 400 | GET-only route requiring unidentified query parameters |
| `/system/download` | 400 without a valid selector | Authorized GET-only download of three fixed `/flash` files; see below |
| `/system/time` | 200 | UTC/local timestamps, formatted times and timezone |
| `/system/requests` | 200 | Advertised-route list |
| `/system/status` | 200 | Currently empty `{entries, count}` |
| `/desc.xml` | 404 | Advertised but absent in the current state/build |
| `/currentmedia` | 405 | POST returns 204, even for `{}` and unknown fields; no verified schema |
| `/` | 405 | POST `{}` returns 400 |

## Complete registration map

Reverse engineering `/usr/lib/libwebservices.so.1.1.1` confirms that the 23
paths above are the complete set of ordinary HTTP callback registrations in
this build. This matches the live `/system/requests` response exactly; no
additional active HTTP path was found in `/usr/bin/middleware` or the recovered
JSON-RPC support libraries.

Three additional route strings are compiled into `libwebservices`, but they are
not registered by the currently running port-3030 instance:

| Compiled route | Registration/handler | Live result | Meaning |
|---|---|---:|---|
| `/portal/deviceudid` | `wctl_portal_deviceudid_cb` | 404 | Optional portal integration |
| `/streaming/hls/*` | glob callback installed by `wctl_register_streaming_service` | 404 | Optional HLS streaming session path |
| `/streaming/raw/*` | glob callback installed by `wctl_register_streaming_service` | 404 | Optional raw streaming session path |

The streaming registrations are dynamic: `wctl_register_streaming_service()`
adds both glob callbacks when that feature is enabled. The library constructs
URLs shaped like `/streaming/raw/%X` and
`/streaming/hls/%X/master.m3u8`, where `%X` is a session identifier. A benign
unknown-session probe currently returns a bare 404 for both prefixes.

Exported callbacks named `wctl_media_live_cb`, `wctl_media_records_cb`,
`wctl_media_category_cb`, and `wctl_swoosh_pair_cb` do not correspond to extra
literal URL registrations. They are internal dispatch handlers used by the
registered media/root-facing service paths.

## Related network surface

- HTTP is provided by `libwebservices.so.1.1.1` through `evhtp`, normally under
  `/usr/bin/middleware` as UID 1006.
- The ordinary listener is TCP 3030. The binary contains two web-service
  instances, with the same core callback set registered on each; the second is
  used for a separate bind/interface context rather than a second URL API.
- SSDP discovery is enabled on UDP 1900 for one instance, with a 1,800-second
  maximum age. `/desc.xml` is the advertised description callback, although it
  currently returns 404.
- `libws_json_service.so` and `libcson_jsonrpc.so` implement generic WebSocket
  JSON-RPC framing. They contain no application-specific URL or RPC-method
  table, and no additional WebSocket endpoint is advertised by
  `/system/requests`.
- Port 1988 is a separate root-owned HTTP-like listener and is not this
  middleware API.

The captured 2026-10-04 `/system/requests` body was:

```json
{"entries":["/logs/debug","/logs/streaming","/authorization/token","/authorization/users","/control/rcu","/control/volume","/events","/eit/epgdb","/eit/present","/eit/follow","/signal/info","/schedules/recordings","/network/interfaces","/system/version","/system/parentalcode","/system/logo","/system/download","/system/time","/system/requests","/system/status","/desc.xml","/currentmedia","/"],"count":23}
```

## `/system/download` reconstruction

`wctl_system_download_cb` accepts GET only and calls
`wctl_authorization_check()` before processing the request. Its only query key
is `file`, and the value is compared exactly against a compiled whitelist:

| `file` value | Fixed backing path | Response content type |
|---|---|---|
| `channellogos` | `/flash/channel_logo.zip` | `application/octet-stream` |
| `recommendations` | `/flash/epg_recommendation.zip` | `application/octet-stream` |
| `search` | `/flash/epg_search/epg_search.db` | `application/octet-stream` |

The handler calls `access()` and computes an MD5 before asynchronously sending
the selected file. It returns `Content-MD5`, `Last-Modified`, and cache-control
headers for an available file. There is no caller-controlled filesystem path:
unknown values and traversal strings return 400. On 2026-10-04 all three valid
selectors returned 404 because their fixed backing files were absent. This
endpoint therefore does not provide command execution or arbitrary file read.

## Root-route crash analysis

The root callback is `wctl_swoosh_pair_cb`. It accepts POST bodies up to 1,024
bytes, parses JSON, fetches `command`, and accepts the string values `pair` or
`AuthPairingRequest`. It then forwards the parsed object into the pairing
logic. The known nested-object crash occurs because the callback obtains the
`command` member and passes the result of `cson_value_get_cstr()` directly to
`strcmp()` without first confirming that the JSON value is a string. For an
object-valued `command`, the conversion can return NULL and `strcmp()` faults.

This is a remotely reachable service-denial bug, but the examined path contains
no attacker-sized copy or controlled indirect branch. It supplies a reliable
NULL-pointer crash, not a demonstrated memory overwrite or shell primitive.

### Valid `AuthPairingRequest` test

On 2026-10-04, the smallest valid pairing notification was tested with an
otherwise inert audit marker:

```http
POST / HTTP/1.1
Content-Type: application/json

{"command":"AuthPairingRequest","marker":"codex-pair-audit"}
```

The server returned `204 No Content`. Before and after the request,
`/authorization/users` remained `{"entries":[],"count":0}`. The only observed
change was one transient entry in `/events`:

```json
{"command":"AuthPairingRequest","marker":"codex-pair-audit","id":"id-event-1","objtype":"event","trigger":"swoosh_pair"}
```

This agrees with the callback implementation: it clones the submitted object,
adds the event identity/type and `swoosh_pair` trigger, then calls
`wctl_send_notification()`. It does not call the user creation/save functions
or write `/flash/users.db`. `AuthPairingRequest` is therefore a UI/event-bus
signal to start the pairing workflow, not authorization itself and not a shell
primitive. A different component must respond to that signal and complete the
token/user approval flow.

## Safe examples

```sh
python3 vodafone_stb_api.py get /system/version
python3 vodafone_stb_api.py get /network/interfaces
python3 vodafone_stb_api.py get /system/status
python3 vodafone_stb_api.py events
```

To long-poll, pass the cursor returned by the previous `/events` request:

```sh
python3 vodafone_stb_api.py --timeout 60 events Tv4dPlsz9riq7Zq
```

Arbitrary JSON can be sent for controlled experiments:

```sh
python3 vodafone_stb_api.py post /control/rcu '{"field":"value"}'
```

Do not assume speculative RCU, volume, download, media, or recording schemas are safe. A syntactically valid request could change playback, volume, recordings, or software state. The live authorization code is short-lived and is intentionally omitted from this report.

## Raw probe

`vodafone-endpoint-probe.json` contains the captured status, headers, and bodies for GET/HEAD/OPTIONS. It includes short-lived authorization data and should be treated as sensitive. `probe_vodafone_endpoints.py` regenerates the probe, but note that requesting `/authorization/token` creates another pending authorization entry.

## POST command fuzzing

A bounded non-null-value run sent 532 `{"command": VALUE}` bodies to each of `/control/rcu` and `/control/volume` (1,064 total). Values covered integers `-1` through `255`, their string equivalents, booleans, empty and sentinel strings, benign navigation/status words, arrays, and objects. Every request returned `400 Bad Request`; the service remained healthy. Results are stored in `vodafone-command-fuzz.json`.

The root `/` route is excluded from further fuzzing: `{"command":{"value":"__INVALID__"}}` caused the web-service process to terminate and temporarily refuse connections. This indicates a likely type-validation defect but does not establish the exact implementation fault.

## Expanded schema discovery

Read-only query fuzzing identifies `uid` as the required query parameter for `/eit/present`, `/eit/follow`, and `/system/logo`: omitting it returns `400`, while a syntactically accepted but unknown value returns `404`. `/events` recognizes `stream_position`; an unknown cursor returns `404`, while a current cursor performs long polling. No tested single or paired query fields satisfied `/signal/info`. Subsequent binary analysis reconstructed `/system/download` completely in the section above.

`/control/volume` requires a flat string `id` field. `{"id":"volume-isolation-probe"}` returns `204`; adding any tested extra flat string does not change that result. An isolated request produced no `/events` entry, so acceptance does not prove that an unknown ID changes volume.

`/currentmedia` is an event-ingestion route. It accepts arbitrary flat JSON with `204` and publishes the supplied fields through `/events`, adding a generated `id`, `"objtype":"event"`, and `"trigger":"swoosh_change"`. For example, posting `{"command":"schema-probe","marker":"currentmedia-isolation"}` generated event `id-event-77` with those two submitted fields intact.

Exhaustive two-field flat-string combinations across 20 candidate names found no accepted schema for `/control/rcu` or POST `/system/parentalcode`; both remained `400`. This is consistent with missing authorization or untested vendor-specific field names. Collection paths `/signal`, `/eit`, `/schedules`, `/recordings`, `/media`, `/control`, `/volume`, `/rcu`, `/logs`, `/authorization`, `/api`, `/health`, `/status`, and `/version` exist at the router level (`GET 405`, empty POST `400`) but did not accept the tested flat fields.

Raw data is stored in `vodafone-get-fuzz.json`, `vodafone-schema-fuzz.json`, `vodafone-expanded-fuzz.json`, and `vodafone-post-pair-fuzz.json`.

## Shell-metacharacter canaries

In the authorized lab environment, `/control/volume` was tested with ten non-destructive string canaries including `;echo CANARY`, `$(echo CANARY)`, backticks, pipe/Boolean operators, `$(id)`, traversal text, and encoded-newline text. Every request returned `204`; `/system/version` remained `200`; no canary appeared in `/events`; and no output, callback, file change, or service instability was observed. This is negative evidence against command injection in the tested `id` field, not a formal proof for every hidden code path.

The same canaries were tested as query values on `/system/download`, `/system/logo`, `/signal/info`, `/eit/present`, and `/eit/follow`. Download and signal remained `400`; logo/EIT treated canaries in `uid` as unknown IDs (`404`). The service remained healthy (`/system/version` `200`) with no reflected output or callback. Raw results are in `vodafone-other-endpoint-canaries.json`.

`/currentmedia` has a request-size limit. A 100-field JSON body was rejected with `413 Entity Too Large`. In a stepped test, a 502-byte body containing 20 fields returned `204`, while a 526-byte body containing 21 fields returned `413`, indicating an approximately 512-byte parser limit. The 100-field request did not create an event.
