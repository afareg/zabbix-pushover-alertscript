zabbix-pushover-alertscript
===========================

An alertscript for Zabbix that utilizes Pushover through jnwatts/pushover.sh for sending notifications.

## How to use

First, check this pushover.sh and jnwatts/pushover.sh out on your Zabbix server. Then move [jnwatts/pushover.sh](https://github.com/jnwatts/pushover.sh) to for example `/usr/local/bin/pushover` and `chmod +x` it.

After that, find out where to put this pushover.sh:

```bash
grep -i alertscriptspath= your-zabbix_server.conf | awk -F= '{ print $2 }'
```

Then `cp` it there and also `chmod +x` it.

Next, visit [https://pushover.net/apps] and add a new application. Copy the application token and set it within this pushover.sh script as `$PO_TOKEN`. After that go to [https://pushover.net/], copy the user key and also set it within this pushover.sh script, as `$PO_USER`.

Now you're ready to add a new media type in the Zabbix frontend and use "pushover.sh" as script name. In the "to" field you can either enter "all", to send pushover notifications to all your authenticated devices or the specific device name which should receive the notifications.

You're done. Enjoy. :-)
