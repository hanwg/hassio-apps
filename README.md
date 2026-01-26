# Home Assistant Add-on: Telegram Bot API

[![GitHub Release][releases-shield]][releases] [![License][license-shield]](LICENSE.md)

![Supports i386 Architecture][i386-shield]

Telegram Bot API server for Home Assistant.

[Documentation](https://github.com/hanwg/hassio-addons/blob/main/telegram-bot-api/DOCS.md)

## About

This add-on allows you to run your own [Telegram Bot API server](https://github.com/tdlib/telegram-bot-api) instead of using the official server `https://api.telegram.org`.
Running your own server has advantages such as larger file size limits for messages and faster response times.
For more details, please refer to [using a local bot API server](https://core.telegram.org/bots/api#using-a-local-bot-api-server) in the official documentation.

The addon is built based on the [aiogram/telegram-bot-api](https://github.com/aiogram/telegram-bot-api) image with minor customizations to be able to run on Home Assistant with basic configuration.

[releases-shield]: https://img.shields.io/github/release/hanwg/hassio-addons.svg
[license-shield]: https://img.shields.io/github/license/hanwg/hassio-addons.svg
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg
