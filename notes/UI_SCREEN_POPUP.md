# UI `screen_popup` notes

The Vodafone portal runs in Opera/Thor and exposes its local Chrome DevTools
Protocol endpoint at `127.0.0.1:9222`. The portal page is normally
`http://127.0.0.1:50000/portal/index.html` and provides the `wtv`, `app`, and
`dijit` JavaScript objects.

## Generic full-screen popup

The full-screen popup route is `app.ids.screen.popupScreen`, controlled by
`app.controllers.screens.PopupScreenController`. A verified Wi-Fi test is:

```js
wtv.screenManager.displayScreen(
  app.ids.screen.popupScreen,
  app.ids.widget.popup.popupButtons,
  {
    popup: "wifi",
    actions: {
      valid: function () { wtv.screenManager.previousScreen(); },
      help: function () { wtv.screenManager.previousScreen(); }
    }
  },
  true,
  true
);
```

The live portal confirmed `wtv.getCurrentScreen().id === "popupScreen"` after
this call.

## Network setup error screens

These are first-install screens rather than `notificationManager` overlays.
`wtv.networkManager.getState()` returns one of three error names:

- `noLink` — interface link is down
- `noIP` — link exists but no IP address was acquired
- `noInternet` — link and IP exist but Internet validation failed

The Wi-Fi error screen is
`app.ids.screen.firstInstall.wifiNetworkErrorScreen`. Its controller reads the
current error and selects an i18n description such as
`firstInstall.wifiNetworkErrorScreen.noIP`. For `noInternet`, it instead uses
`firstInstall.wiredNetworkScreen.noInternet`.

For visual testing, mock `getState()` briefly, display the screen, then restore
the original function. This avoids changing the actual network configuration.
