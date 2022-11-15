#!/bin/sh
if [ ! -f UUID ]; then
  UUID="6b453085-7adc-4cbd-b2ee-17427bbe0907"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

