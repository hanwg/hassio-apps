#!/usr/bin/with-contenv bashio
set -e

cat /data/options.json
echo 111
API_ID="$(bashio::config 'api_id')"
API_HASH="$(bashio::config 'api_hash')"
LOG_LEVEL="$(bashio::config 'log_level')"
echo "target is ---- $LOG_LEVEL"


# load home assistant app configs
if [ -f "/data/options.json" ]; then
  API_ID=$(jq --raw-output ".api_id" /data/options.json)
  API_HASH=$(jq --raw-output ".api_hash" /data/options.json)
  LOG_LEVEL=$(jq --raw-output ".log_level" /data/options.json)
fi

mkdir -p /data/telegram-bot-api

/usr/local/bin/telegram-bot-api --version

echo "Start Telegram Bot API"

/usr/local/bin/telegram-bot-api \
  --api-id=${API_ID} \
  --api-hash=${API_HASH} \
  --local \
  --dir=/data/telegram-bot-api \
  --verbosity=${LOG_LEVEL}

echo "Telegram Bot API stopped"
