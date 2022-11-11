#!/bin/sh
if [ ! -f UUID ]; then
  UUID="df3ef808-a3b2-4537-bdc4-7342fbf786ef"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

