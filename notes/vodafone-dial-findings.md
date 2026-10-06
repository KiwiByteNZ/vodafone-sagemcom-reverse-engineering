# Vodafone VODA4K DIAL findings

Target: `192.168.50.181`

## Port 56790

```sh
curl --noproxy '*' -i http://192.168.50.181:56790/dd.xml
```

Returns `HTTP/1.1 200 OK`, `Content-Type: text/xml`, and:

- `Application-URL: http://192.168.50.181:56789/apps/`
- device type: `urn:schemas-upnp-org:device:tvdevice:1`
- friendly name: `Sagemcom_DxIW387-VFNZ-STB-<TARGET_UDID>`
- model: `Vodafone_Premium VF-PT Model`
- UDN: `uuid:48d24f7d-6b73-4f7d-6b73-5cbbbd039924`

## Port 56789

The application URL itself (`/apps/`) returns `404`, but per-application DIAL resources work:

- `/apps/Netflix` → `200`, DIAL 2.1 XML, state `running`, `allowStop=true`, run link `run`
- `/apps/YouTube` → `200`, DIAL 2.1 XML, state `stopped`

The DIAL paths were queried read-only. No run/stop/launch request was sent.

## Security observations

- Port `56789` has no authentication on the tested read endpoints.
- Its CORS handling reflects arbitrary origins. For example, sending `Origin: https://attacker.example` to `/apps/Netflix` returns `Access-Control-Allow-Origin: https://attacker.example`; `Origin: null` is reflected as `Access-Control-Allow-Origin: null`. This allows a browser page on another origin to read app state and other DIAL responses, subject to network reachability.
- `/apps/Netflix` and `/apps/YouTube` accept URL-normalized variants such as `/apps/%4eetflix`, `/apps/Netflix%00`, and `/apps//Netflix`; this is permissive routing, not by itself code execution.
- `HEAD` and `TRACE` return controlled `400` parser errors; `OPTIONS` returns `404`. No method-level exploit was attempted.
- Port `56790/dd.xml` exposes the device UUID, friendly name, model, and application URL without authentication, but did not return CORS headers in testing.

Before the lifecycle tests below, no launch, stop, install, or other state-changing DIAL request had been sent. The CORS reflection is the clearest confirmed bug and should be fixed by allowing only an explicit trusted origin—or omitting CORS entirely for local-control endpoints.

## Lifecycle tests

At the user's direction, launch requests were tested without sending DELETE/stop requests:

- `POST /apps/YouTube/run` → `501 Not Implemented`; YouTube stayed `stopped`.
- `POST /apps/Netflix/run` → `501 Not Implemented`; Netflix stayed `running`.
- `POST /apps/YouTube` → `201 Created`, `Location: /apps/YouTube/run`; a subsequent GET still reported `stopped`.
- `POST /apps/Netflix` → `201 Created`, `Location: /apps/Netflix/run`; a subsequent GET still reported `running`.

The direct `/apps/{app}` POSTs are unauthenticated and return success even when the observed application state does not change. No DELETE request was sent, so no application was deliberately stopped.

## Broader inventory

A read-only probe of 35 likely app names found only `Netflix` and `YouTube` on port `56789`. A read-only probe of 22 common device/settings/discovery paths found no additional endpoint on either port; `56790/dd.xml` remains the only metadata path. SSDP M-SEARCH requests directed at the device returned no response. The raw 118-request inventory is in `vodafone-dial-app-settings-probe.json`.

## XML, command, and traversal checks

- POST bodies to an unknown app route (`/apps/__xml_probe__`) returned ordinary `404` responses for malformed XML, entity syntax, and shell-text bodies.
- On the known `/apps/YouTube` launch route, malformed XML (`<`, mismatched tags), valid XML, and plain shell text all returned the same `201 Created` response and launch `Location`. YouTube remained `stopped`. This indicates the body is ignored or not parsed; no XML entity expansion or command execution was observed.
- Encoded and double-encoded traversal forms (`../`, `%2e%2e%2f`, backslash variants, and `/etc/passwd`) against `/dd.xml`, `/apps/Netflix`, and `/apps/YouTube` all returned `404` with the standard 30-byte error body. No file content was disclosed.
- Shell canaries in DIAL query parameters likewise produced only normal `400`/`404` responses. No command output, callback, file change, or crash was observed.
