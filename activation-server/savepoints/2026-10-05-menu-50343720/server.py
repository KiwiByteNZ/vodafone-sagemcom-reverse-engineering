#!/usr/bin/env python3
"""Minimal Vodafone TV DMS request recorder used in the local lab."""

from datetime import datetime, timezone
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
import os
import json
from urllib.parse import urlsplit


LOG = Path(__file__).with_name("vodafone-dms-requests.log")
PRIVATE_REFERENCE = Path(__file__).with_name("vodafone-reference-private.json")
CATALOG_REFERENCE = Path(__file__).with_name("vodafone-app-catalog.json")
MENU_REFERENCE = Path(__file__).with_name("vodafone-menu-reference.json")


class Handler(BaseHTTPRequestHandler):
    protocol_version = "HTTP/1.1"

    def _handle(self):
        length = int(self.headers.get("Content-Length", "0"))
        body = self.rfile.read(length) if length else b""

        if self.path == "/import-reference" and self.command == "POST":
            PRIVATE_REFERENCE.write_bytes(body)
            os.chmod(PRIVATE_REFERENCE, 0o600)
            response = b'{"stored":true}'
            self.send_response(200)
            self.send_header("Content-Type", "application/json")
            self.send_header("Content-Length", str(len(response)))
            self.send_header("Connection", "close")
            self.end_headers()
            self.wfile.write(response)
            print(f"Stored private activated-box reference ({len(body)} bytes)", flush=True)
            return

        if self.path == "/import-catalog" and self.command == "POST":
            CATALOG_REFERENCE.write_bytes(body)
            os.chmod(CATALOG_REFERENCE, 0o600)
            response = b'{"stored":true}'
            self.send_response(200)
            self.send_header("Content-Type", "application/json")
            self.send_header("Content-Length", str(len(response)))
            self.send_header("Connection", "close")
            self.end_headers()
            self.wfile.write(response)
            print(f"Stored activated-box app catalogue ({len(body)} bytes)", flush=True)
            return

        if self.path == "/import-menu" and self.command == "POST":
            MENU_REFERENCE.write_bytes(body)
            os.chmod(MENU_REFERENCE, 0o600)
            response = b'{"stored":true}'
            self.send_response(200)
            self.send_header("Content-Type", "application/json")
            self.send_header("Content-Length", str(len(response)))
            self.send_header("Connection", "close")
            self.end_headers()
            self.wfile.write(response)
            print(f"Stored activated-box menu reference ({len(body)} bytes)", flush=True)
            return

        timestamp = datetime.now(timezone.utc).isoformat()
        record = (
            f"\n[{timestamp}] {self.command} {self.path}\n"
            f"{self.headers}"
            f"\nBODY ({len(body)} bytes)\n"
        ).encode() + body + b"\n"
        with LOG.open("ab") as stream:
            stream.write(record)

        path = urlsplit(self.path).path.lower()
        request_target = self.path.lower()
        extra_headers = {}
        if path.endswith("/getconfig"):
            response_object = {
                "status": "success",
                "token": "local-dms-emulator",
                "version": {"isforceupdate": False},
                "params": {
                    "UserDataToDMS": True,
                    "PairingType": "silentLogin",
                    "AppsEnabled": "true",
                    "AppsInVODEnabled": "false",
                    "AppsListURL": "http://192.168.0.163:8080/dms/apps.json",
                    "Gateways": [
                        {"JsonGW": "http://192.168.0.163:8080/dms/api.svc/"},
                        {"AuthGW": "http://192.168.0.163:8080/dms/api.svc/"},
                    ],
                    # The activated box resolves APPS=true and APPS_IN_VOD=false.
                    # A numeric media-type entry preserves that exact flag state.
                    "MediaTypes": [{"1": "Application"}],
                    "STBDisabledFeatureTableByCustomerType": [
                        {
                            "default": (
                                '["noPVRPast","noRecomm","noCASIDUDID",'
                                '"noSeamlessPairing","noPurchaseBadge"]'
                            )
                        }
                    ],
                    "Timezone": "Pacific/Auckland",
                    "DMSRefreshInterval": "PT0S",
                },
            }
        elif path.endswith("/apps.json"):
            processed_apps = json.loads(CATALOG_REFERENCE.read_text())
            response_object = []
            for app in processed_apps:
                response_object.append({
                    "name": {"en": app.get("name", "Application")},
                    "description": {"en": app.get("description", "")},
                    "appid": app.get("appid"),
                    "profile": app.get("profile"),
                    "url": app.get("url", ""),
                    "audio": app.get("audio", True),
                    "pictures": app.get("pictures") or {},
                    "background": app.get("backgroundImgUrl", ""),
                    "disableUI": False,
                    "appsrailUi": not app.get("hideFromRail", False),
                    "refreshOnClose": app.get("refreshOnClose", False),
                })
        elif "refreshaccesstoken" in request_target:
            reference = json.loads(PRIVATE_REFERENCE.read_text())
            refresh = reference["tokens"]["refresh"]["token"]
            response_object = {
                "access_token": "local-access-token",
                "expiration_time": 2256574249,
                "refresh_token": refresh,
                "refresh_expiration_time": 2256574249,
            }
        elif "simpleregistration" in request_target or "loginwithpin" in request_target:
            reference = json.loads(PRIVATE_REFERENCE.read_text())
            refresh = reference["tokens"]["refresh"]
            far_future = "2256574249"
            extra_headers = {
                "access_token": f"local-access-token|{far_future}",
                "refresh_token": f"{refresh['token']}|{far_future}",
            }
            response_object = {
                "status": {"code": 0, "message": "OK"},
                "result": {
                    "user": {
                        "m_user": {
                            "m_domianID": 0,
                            "networkId": 0,
                            "m_oBasicData": {
                                "m_sFirstName": "Vodafone",
                                "m_sLastName": "TV",
                            },
                        }
                    }
                },
            }
        elif "getdevicedomains" in request_target:
            response_object = [{"DomainID": "0", "DefaultUser": "1"}]
        elif "adddevicetodomain" in request_target:
            response_object = {
                "m_oDomainResponseStatus": 0,
                "m_oDomain": {"m_DefaultUsersIDs": ["1"]},
            }
        elif "getdomaininfo" in request_target:
            response_object = {
                "m_masterGUIDs": ["1"],
                "m_DefaultUsersIDs": ["1"],
                "m_UsersIDs": ["1"],
            }
        elif "getsecuredsiteguid" in request_target:
            response_object = "local-secured-site-guid"
        elif "changeuser" in request_target:
            response_object = True
        elif "getuserdata" in request_target and "getusersdata" not in request_target:
            response_object = {
                "m_user": {
                    "m_sSiteGUID": "1",
                    "m_domianID": 0,
                    "networkId": 0,
                    "m_oBasicData": {
                        "m_sFirstName": "Vodafone",
                        "m_sLastName": "TV",
                    },
                    "m_oDynamicData": {"m_sUserData": []},
                }
            }
        elif "getusersdata" in request_target:
            response_object = [{
                "m_user": {
                    "m_sSiteGUID": "1",
                    "m_domianID": 0,
                    "networkId": 0,
                    "m_oBasicData": {
                        "m_sFirstName": "Vodafone",
                        "m_sLastName": "TV",
                    },
                    "m_oDynamicData": {"m_sUserData": []},
                },
                "m_dynamicData": [],
            }]
        elif "getmenu" in request_target:
            response_object = {
                "MenuItems": [{
                    "Name": "APPLICATIONS",
                    "URL": "",
                    "Children": [{
                        "Name": "Applications",
                        "URL": "50343720",
                    }],
                }]
            }
        elif any(method in request_target for method in (
            "getdomainpermitteditems", "getitemfromlist"
        )):
            response_object = []
        else:
            response_object = {"status": {"code": 0, "message": "OK"}, "result": {}}

        response = json.dumps(response_object, separators=(",", ":")).encode()
        self.send_response(200)
        self.send_header("Content-Type", "application/json; charset=utf-8")
        for name, value in extra_headers.items():
            self.send_header(name, value)
        self.send_header("Content-Length", str(len(response)))
        self.send_header("Connection", "close")
        self.end_headers()
        self.wfile.write(response)

    do_GET = _handle
    do_POST = _handle


if __name__ == "__main__":
    print("Vodafone DMS probe listening on 0.0.0.0:8080", flush=True)
    ThreadingHTTPServer(("0.0.0.0", 8080), Handler).serve_forever()
