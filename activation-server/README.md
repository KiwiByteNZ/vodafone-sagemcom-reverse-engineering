# Vodafone TV local activation server

This folder contains a reusable local DMS emulator for legacy Vodafone TV
boxes. Each tester generates a separate local activation reference.

## Run

```sh
cd activation-server
python3 setup_device.py --serial YOUR_BOX_SERIAL --udid YOUR_BOX_UDID
./run.sh
```

The server listens on `0.0.0.0:8080`. In the box's `4242` menu, use:

```text
Application name: com.kaltura.vodafone.nz.stb
Vodafone Server Url: http://YOUR_SERVER_IP:8080/dms/
```

Keep the terminal running while the box boots. Requests are written to
`vodafone-dms-requests.log` in this folder.

## Private runtime file

`setup_device.py` generates `vodafone-reference-private.json` with a unique
local token. That generated file is ignored by Git. Do not copy another box's
token. `vodafone-app-catalog.json` contains the captured application catalogue
used to rebuild the Apps rail.

See `NOTES.md` for the current state and remaining work.
