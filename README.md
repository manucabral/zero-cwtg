# zero-cwtg
Modern CW/TG gamemode for SA-MP fully customizable.
> Current in development.

## Setup
1. Download last release [here]().
2. Extract the content of the downloaded archive into the root directory of your SA-MP server.
3. Edit the server configuration (server.cfg) as follows:

```cfg
gamemode0 zero
discord_bot_token YOURDISCORDBOTTOKEN
```
Linux plugins: ```plugins YSF.dll mysql.dll```

Windows plugins: ```plugins YSF.so mysql.so```

4. Open scriptfiles/settings.yml and edit it to your preferences.
5. Run the server.

## Languages
> Requires multilanguage enable.

If you want to add a new language to the gamemode follow the next steps
1. Copy the base language file `en.yml` located in scripfiles/languages and rename it to your new language.
2. Translate each value without delete any key.
3. Once translated open `settings.yml` and add your new language file.
```yml
languages: [en, es, cz]
```
> The new language file is **cz.yml** 

## Languages
> Requires discord enable and discord_bot_token defined in server.cfg

If you want to connect the gamemode to your discord server follow the next steps.

1. Create a bot and copy the bot token.
2. Make sure ```discord_bot_token YOURDISCORDBOTTOKEN``` exist in your server.cfg file.
4. Enable discord developer mode and copy each key ID required in ```scriptfiles/settings.yml```.
```yaml
ds_enable: true # important
ds_guild_id:
ds_role_manager:
ds_role_admin:
ds_role_mod:
ds_channel_general:
ds_channel_admin:
```
