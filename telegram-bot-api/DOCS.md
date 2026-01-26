# Home Assistant Add-on: Telegram Bot API

Run your own instancec of the Telegram Bot API server.

## Installation

1. On your Home Assistant, go to <kbd>Settings</kbd> > <kbd>Add-ons</kbd> > <kbd>Add-on store</kbd>.
2. Click on the <kbd>...</kbd> icon then <kbd>Repositories</kbd>.
3. In the <kbd>Add</kbd> field, specify this repository's URL `https://github.com/hanwg/hassio-addons` and then click <kbd>+ Add</kbd>.
4. Refresh the page. You should see a new add-on named <kbd>Home Assistant Add-on: Telegram Bot API</kbd>. Note: If you do not see the add-on, wait a few moments and refresh the page again.
5. Click on the add-on then click <kbd>Install</kbd>. Wait a few minutes for it to finish downloading.
6. Click on <kbd>Start</kbd>.

Once you have successfully installed the add-on, continue with the configuration below.

## Configuration

Configure the options below and then click <kbd>Save</kbd>. Click <kbd>Restart</kbd> when prompted.

### Option: `api_id`



### Option: `api_hash`



### Option: `log_level`

The `log_level` controls the verbosity of the log output. You should only use larger values for troubleshooting purposes.
Possible values are:
- `1` - Error. Default.
- `2` - Warning. Shows resource usage.
- `3` - Info. Shows HTTP requests.
- `4` - Debug

## Support

Questions? Issues?

Please [open an issue](https://github.com/hanwg/hassio-addons/issues).
