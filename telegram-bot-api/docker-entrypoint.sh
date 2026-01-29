#!/usr/bin/with-contenv bashio
set -e

API_ID="$(bashio::config 'api_id')"
API_HASH="$(bashio::config 'api_hash')"
LOG_LEVEL="$(bashio::config 'log_level')"

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
