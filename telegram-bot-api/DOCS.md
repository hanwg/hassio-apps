# Home Assistant App: Telegram Bot API

## Overview

This app allows you to run your own instance of the Telegram Bot API server. The illustration below shows the architecture after the setup is completed:

![Architecture](/images/architecture.svg)

## 1. Pre-requisites

1. **Home Assistant:** Version 2026.2 or later is required.
2. **Telegram app credentials:** [Create your Telegram application](https://core.telegram.org/api/obtaining_api_id) to obtain your `api_id` and `api_hash` which will be required for configuration later.

## 2. Installation

1. On your Home Assistant, go to <kbd>Settings</kbd> > <kbd>Apps</kbd> > <kbd>App store</kbd>.
2. Click on the <kbd>...</kbd> icon then <kbd>Repositories</kbd>.
3. In the <kbd>Add</kbd> field, specify this repository's URL `https://github.com/hanwg/hassio-apps` and then click <kbd>+ Add</kbd>.
4. Refresh the page. You should see a new app named <kbd>Home Assistant App: Telegram Bot API</kbd>. Note: If you do not see the app, wait a few moments and refresh the page again.
5. Click on the app then click <kbd>Install</kbd>. Wait a few minutes for it to finish downloading.

Once you have successfully installed the app, continue with the app configuration below.

## 3. App Configuration

1. Go to <kbd>Settings</kbd> > <kbd>Apps</kbd> > <kbd>Telegram Bot API</kbd>.
2. Click on the <kbd>Configuration</kbd> tab.
3. Specify the options and then click <kbd>Save</kbd>. Click <kbd>Restart</kbd> to restart the app if prompted.
4. Go to the <kbd>Info</kbd> tab and click <kbd>Start</kbd> to run the app.

### Options

| Option | Type | Description |
| --- | --- | --- |
| `api_id` | string | Your Telegram app ID from https://my.telegram.org/apps. |
| `api_hash` | string | Your Telegram API hash from https://my.telegram.org/apps. |
| `log_level` | int | Log verbosity level (1-4). |

### App Configuration Example

The following is an example yaml configuration.
You must replace `api_id` and `api_hash` with your own values.

```
api_id: "12345678"
api_hash: 1234567890abcdef1234567890abcdef
log_level: 1
```

## 4. Telegram Bot API Endpoint

Now that you have installed, configured and started the app, you should be able to access the Telegram bot API endpoint by using any of the following URLs:
- `http://localhost:8081` - Used within Home Assistant.
- `http://homeassistant.local:8081` - Used anywhere within your network.

You will then need to configure your Home Assistant Telegram Bot Integration to connect to the app instead of the official Telegram Bot API server (https://api.telegram.org).

## 5. Home Assistant Telegram Bot Integration Configuration

> [!NOTE]
> You do not need to make any changes to your existing automations or scripts that uses Telegram bot.

This section assumes that you have already set-up the Telegram bot integration.
If you have not done so, please refer to the [Telegram bot integration](https://www.home-assistant.io/integrations/telegram_bot) documentation.

Perform the following step to configure your Telegram bot to connect to this app:
1. On your Home Assistant, go to <kbd>Settings</kbd> > <kbd>Devices & services</kbd>.
2. Click on <kbd>Telegram bot</kbd>.
3. Click on the gear icon of the Telegram bot to display the options for the config entry.
4. In the API endpoint field, specify the Telegram bot API endpoint: `http://localhost:8081/bot` and click <kbd>Submit</kbd>.

🎉 Congratulations! Your Telegram bot is now connected to your local Telegram bot API server.

To verify the connection, go to <kbd>Settings</kbd> > <kbd>Apps</kbd> > <kbd>Telegram Bot API</kbd> and click <kbd>Open Web UI</kbd>.
In the statistics screen, check that `active_bot_count` is displaying the correct value.

## FAQs

### Why would I want to use this over the official server `https://api.telegram.org`?

Running your own server has advantages such as larger file size limits for messages and faster response times.
For more details, please refer to [using a local bot API server](https://core.telegram.org/bots/api#using-a-local-bot-api-server) in the official documentation.

### Can I chat with other users on other Telegram bot API servers?

Yes, because all Telegram bot API servers connect to the same set of Telegram MTProto servers.

## Troubleshooting

### Server error: `Can't parse as an integer string`

You may observe the following in the app logs:
```
/usr/local/bin/telegram-bot-api: Can't parse as an integer string
```

The error occurs because the value of `api_id` is invalid or too long.

To resolve this issue, update `api_id` accordingly in your configuration and restart the app.

### Client error: `Unauthorized: invalid api-id/api-hash`

This error may be encountered by Telegram clients:
```
{
  "ok":false,
  "error_code": 401,
  "description": "Unauthorized: invalid api-id/api-hash"
}
```

The error occurs because `api_id` and/or `api_hash` is invalid.

To resolve this issue,
1. Go to https://my.telegram.org/apps and note down your `api_id` and `api_hash`.
2. Update the app configuration accordingly and restart the app.

## Support

Questions? Issues?

Please [open an issue](https://github.com/hanwg/hassio-apps/issues).
