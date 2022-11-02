#!/bin/sh
if [ ! -f UUID ]; then
  UUID="9babefa3-69b1-4345-93fc-a0253fe8a719"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

