FROM aiogram/telegram-bot-api


# override defaults from aiogram/telegram-bot-api
COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN \
  # jq for parsing options.json
  apk add jq && \  
  chmod a+x /docker-entrypoint.sh