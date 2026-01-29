ARG BUILD_ARCH
FROM ghcr.io/hanwg/telegram-bot-api/$BUILD_ARCH:9.3


# override defaults from aiogram/telegram-bot-api
COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN \
  chmod a+x /docker-entrypoint.sh