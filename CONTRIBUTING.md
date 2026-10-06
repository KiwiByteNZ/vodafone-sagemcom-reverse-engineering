# Contributing test results

Thanks for helping test the legacy Vodafone TV activation emulator.

## Before testing

1. Work only with a box and network you own or are authorized to test.
2. Keep `vodafone-reference-private.json`, packet captures, account details,
   serial numbers, UDIDs, MAC addresses, and public IP addresses out of issues
   and pull requests.
3. Create a per-device local reference:

   ```sh
   cd activation-server
   python3 setup_device.py --serial YOUR_SERIAL --udid YOUR_UDID
   ./run.sh
   ```

4. In the box's `4242` menu, configure:

   ```text
   Application name: com.kaltura.vodafone.nz.stb
   Vodafone Server Url: http://YOUR_SERVER_IP:8080/dms/
   ```

## Useful results

Please report:

- box model and firmware version;
- whether activation reached the home screen;
- whether the Applications rail appeared;
- which application names appeared and whether each launched;
- the failing request path and HTTP status, if known;
- sanitized server log excerpts with tokens and device identifiers removed;
- exact steps needed to reproduce a failure.

Do not submit live service credentials or proprietary firmware binaries.

