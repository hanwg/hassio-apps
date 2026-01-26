FROM aiogram/telegram-bot-api

RUN \
  # jq for parsing options.json
  apk add jq

# override defaults from aiogram/telegram-bot-api
COPY docker-entrypoint.sh /docker-entrypoint.sh
