#!/bin/sh
if [ ! -f UUID ]; then
  UUID="b6306e99-79e0-4146-9dd6-67c9a309e87c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

