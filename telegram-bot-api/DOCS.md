# Home Assistant Add-on: Telegram Bot API

Run your own instance of the Telegram Bot API server.

## Pre-requisites

Before you being, you will need to [create your Telegram application](https://core.telegram.org/api/obtaining_api_id) to obtain your `api_id` and `api_hash` which will be required for configuration later.

## Installation

1. On your Home Assistant, go to <kbd>Settings</kbd> > <kbd>Add-ons</kbd> > <kbd>Add-on store</kbd>.
2. Click on the <kbd>...</kbd> icon then <kbd>Repositories</kbd>.
3. In the <kbd>Add</kbd> field, specify this repository's URL `https://github.com/hanwg/hassio-addons` and then click <kbd>+ Add</kbd>.
4. Refresh the page. You should see a new add-on named <kbd>Home Assistant Add-on: Telegram Bot API</kbd>. Note: If you do not see the add-on, wait a few moments and refresh the page again.
5. Click on the add-on then click <kbd>Install</kbd>. Wait a few minutes for it to finish downloading.
6. Click on <kbd>Start</kbd>.

Once you have successfully installed the add-on, continue with the configuration below.

## Configuration

Refer to the [Pre-requisites](#pre-requisites) section if you have not created your Telegram application.

Configure the options below and then click <kbd>Save</kbd>. Click <kbd>Restart</kbd> when prompted.

After you have completed your configuration, continue with the Telegram Bot Integration Set-up to configure your Home Assistant Telegram Bot to connect to the add-on instead of the official Telegram API server (https://api.telegram.org).

### Option: `api_id`

Obtained from https://my.telegram.org/apps.

### Option: `api_hash`

Obtained from https://my.telegram.org/apps.

### Option: `log_level`

The `log_level` controls the verbosity of the log output. You should only use larger values for troubleshooting purposes.
Possible values are:
- `1` - Error. Default.
- `2` - Warning. Shows resource usage.
- `3` - Info. Shows HTTP requests.
- `4` - Debug

### Example

The following is an example add-on yaml configuration.
You must replace `api_id` and `api_hash` with your own values.

```
api_id: "12345678"
api_hash: 1234567890abcdef1234567890abcdef
log_level: 1
```

## Telegram Bot API Endpoint

Note: You should have already installed, configured and started the add-on.

The add-on exposes an endpoint which can be reached using the following URLs:
- `http://localhost:8081/bot` - Used within Home Assistant.
- `https://YOUR-HA:8081/bot` - Replace *YOUR-HA* with your Home Assistant hostname.

## Telegram Bot Integration Set-up

This section assumes that you have already set-up the Telegram bot integration.
If you have not done so, please refer to the [Telegram bot documentation](https://www.home-assistant.io/integrations/telegram_bot).

To configure your Telegram bot to use your own Telegram bot API server instance (this add-on), do the following:
1. On your Home Assistant, go to <kbd>Settings</kbd> > <kbd>Devices & services</kbd>.
2. Click on <kbd>Telegram bot</kbd>
3. Click on the gear icon of the Telegram bot to display the options for the config entry.
4. In the API endpoint field, specify the endpoint of the add-on: `http://localhost:8081/bot` and click <kbd>Submit</kbd>.

For more details, please refer to the documentation: https://www.home-assistant.io/integrations/telegram_bot/#options

## FAQs

### Why would I want to use this over the official server `https://api.telegram.org`?

Running your own server has advantages such as larger file size limits for messages and faster response times.
For more details, please refer to [using a local bot API server](https://core.telegram.org/bots/api#using-a-local-bot-api-server) in the official documentation.

### Can I chat with other users on other Telegram bot API servers?

Yes, all Telegram bot API servers connect to the Telegram's MTProto servers.

## Troubleshooting

### Server error: `Can't parse as an integer string`

You may observe the following in the add-on logs:
```
/usr/local/bin/telegram-bot-api: Can't parse as an integer string
```

The error occurs because the value of `api_id` is invalid or too long.

To resolve this issue, update `api_id` accordingly in your configuration and restart the add-on.

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
1. Check your `api_id` and `api_hash` at https://my.telegram.org/apps.
2. Update the add-on configuration accordingly and restart the add-on.

## Support

Questions? Issues?

Please [open an issue](https://github.com/hanwg/hassio-addons/issues).
