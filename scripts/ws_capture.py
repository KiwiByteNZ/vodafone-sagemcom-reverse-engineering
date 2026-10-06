import asyncio
import datetime
import websockets

async def handler(ws, path):
    print(datetime.datetime.now().isoformat(), "CONNECT", path, dict(ws.request_headers), flush=True)
    try:
        async for message in ws:
            print(datetime.datetime.now().isoformat(), "MESSAGE", repr(message), flush=True)
            await ws.send(message)
    except Exception as exc:
        print(datetime.datetime.now().isoformat(), "CLOSE", repr(exc), flush=True)

async def main():
    async with websockets.serve(handler, "192.168.0.163", 8889):
        await asyncio.Future()

asyncio.run(main())
