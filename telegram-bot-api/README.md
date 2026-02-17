# Home Assistant App: Telegram Bot API

![GitHub Release][releases-shield] [![License][license-shield]](LICENSE.md)

![Supports amd64 Architecture][amd64-shield] ![Supports aarch64 Architecture][aarch64-shield]

Telegram Bot API server for Home Assistant.

[Documentation](https://github.com/hanwg/hassio-apps/blob/main/telegram-bot-api/DOCS.md)

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fhanwg%2Fhassio-apps)

## About

This app allows you to run your own [Telegram Bot API server](https://github.com/tdlib/telegram-bot-api) instead of using the official server `https://api.telegram.org`.
Running your own server has advantages such as larger file size limits for messages and faster response times.
For more details, please refer to [using a local bot API server](https://core.telegram.org/bots/api#using-a-local-bot-api-server) in the official documentation.

The app is built using the [hanwg/telegram-bot-api](https://github.com/hanwg/telegram-bot-api) image which uses the [official source](https://github.com/tdlib/telegram-bot-api).

[releases-shield]: https://img.shields.io/github/release/hanwg/hassio-apps.svg
[license-shield]: https://img.shields.io/github/license/hanwg/hassio-apps.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
