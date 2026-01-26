#!/bin/sh
set -e

echo 123
pwd
ls /data
cat /data/options

# load home assistant add-on configs
if [ -f "/data/options.json" ]; then
  API_ID=$(jq --raw-output ".api_id" /data/options.json)
  API_HASH=$(jq --raw-output ".api_hash" /data/options.json)
fi

/usr/local/bin/telegram-bot-api \
  --local \
  --api-id=${API_ID} \
  --api-hash=${API_HASH} \
  --dir=/data/telegram-bot-api
