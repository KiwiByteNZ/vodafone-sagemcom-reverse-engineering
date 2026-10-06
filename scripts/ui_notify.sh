#!/bin/sh
# Usage: /tmp/ui_notify "$(/tmp/busybox printf '%s' 'Your message' | /tmp/busybox base64)"
# The argument is base64 text, so punctuation and quotes in the notification are safe.

if [ -z "$1" ]; then
    echo "usage: $0 BASE64_MESSAGE"
    exit 2
fi

printf '{"id":1,"method":"Runtime.evaluate","params":{"expression":"wtv.notificationManager.show({title:atob(\\"%s\\")});\\"NOTIFICATION_SENT\\"","returnByValue":true}}' "$1" > /tmp/cdp-request
/tmp/portal_cdp_eval
