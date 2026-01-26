#!/bin/sh
set -e
echo 456
# load home assistant add-on configs
if [ -f "/data/options.json" ]; then
  API_ID=$(jq --raw-output ".api_id" /data/options.json)
  API_HASH=$(jq --raw-output ".api_hash" /data/options.json)
fi

mkdir -p /data/telegram-bot-api

/usr/local/bin/telegram-bot-api \
  --local \
  --api-id=${API_ID} \
  --api-hash=${API_HASH} \
  --dir=/data/telegram-bot-api
