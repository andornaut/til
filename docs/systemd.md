# systemd

* [./Gnome](./gnome.md)
* [./Ubuntu](./ubuntu.md)
* [./Xorg](./xorg.md)
* [Debug unit cycles](https://unix.stackexchange.com/questions/193714/generic-methodology-to-debug-ordering-cycles-in-systemd)

## systemctl commands

* [Manual](https://www.freedesktop.org/software/systemd/man/systemd.html)
* [Digital ocean how-to](https://www.digitalocean.com/community/tutorials/how-to-use-systemctl-to-manage-systemd-services-and-units)

```
# Reload unit files
systemctl daemon-reload

# Start service on boot
systemctl enable $service

# Show units
systemctl list-units
systemctl list-units --state=failed
systemctl list-units --type=mount

# List dependencies
systemctl list-dependencies $service

# List targets
systemctl list-units --type target

# Create a new unit file
systemctl edit --force --full $service

# Edit a unit file
systemctl edit --full $service

# Edit *overrides* for a unit file
systemctl edit $service

# Show tree of critical path targets
systemd-analyze critical-chain

# Show unit files and their e.g. "wants" dependencies
tree /home/andornaut/.config/systemd
tree /etc/systemd/system
tree /etc/systemd/user
```

## journalctl commands

```
# Tail logs for a service
journalctl -f -u $service

# View last 50 logs
journalctl -n 50

# View logs since last boot
journalctl -b

# View logs from the previous boot until the last reboot
journalctl --boot=-1

# Check disk usage from logs
journalctl --disk-usage

# Delete all but 1GB of logs
journalctl --vacuum-size=1G

# ... or delete all logs older than 1 week
journalctl --vacuum-time=1w
```

### Remove service

* [Stackoverflow](https://superuser.com/a/936976)

```
service=example.service
systemctl stop ${service}
systemctl disable ${service}
rm /etc/systemd/system/${service}
rm /etc/systemd/system/${service} # and symlinks that might be related
rm /usr/lib/systemd/system/${service}
rm /usr/lib/systemd/system/${service}#  and symlinks that might be related
systemctl daemon-reload
systemctl reset-failed
```

## User units

Add unit files to `~/.config/systemd/user/`. eg

```
[Unit]
Description=Music Player Daemon

[Service]
ExecStart=/usr/bin/mpd --no-daemon

[Install]
WantedBy=default.target
```

The default target is "default.target"

User units cannot depend on system units.

User commands are similar to the system-wide systemctl, except that they do not require sudo, eg.:
```
systemctl --user daemon-reload
```

### Lingering

[man loginctl](https://www.freedesktop.org/software/systemd/man/loginctl.html#enable-linger%20USER...)

> The user@.service is started automatically when the user first logs in, and stays around as long as at least one login session is open. After the user logs out of the last session, user@.service and all services underneath it are terminated. This behavior is the default, when "lingering" is not enabled for that user. Enabling lingering means that user@.service is started automatically during boot, even if the user is not logged in, and that the service is not terminated when the user logs out.

> Enabling lingering allows the user to run processes without being logged in, for example to allow screen to persist after the user logs out, even if the session scope is terminated. In the default configuration, users can enable lingering for themselves:

```
loginctl enable-linger ${USER}
```

### Create a service to restart an always-on USB port

```
systemctl edit --full --force usb-hub-workaround.service
systemctl enable usb-hub-workaround.service
systemctl start usb-hub-workaround.service
```

Unit file: `/etc/systemd/system/usb-hub-workaround.service`
```
[Unit]
# https://askubuntu.com/a/1005903
Description=Workaround: Restart an always-on USB port

[Service]
Type=oneshot
#usb 1-8: new high-speed USB device number 5 using xhci_hcd
#usb 1-8: New USB device found, idVendor=05e3, idProduct=0610, bcdDevice=94.05
Environment=port=1-8
Environment=sleepSeconds=2
ExecStart=/bin/bash -c '\
set -e; \
echo "Unbind USB port: ${port}"; \
echo ${port} > /sys/bus/usb/drivers/usb/unbind; \
echo Sleeping for ${sleepSeconds} seconds...; \
sleep ${sleepSeconds};\
echo "Bind USB port: ${port}"; \
echo ${port} > /sys/bus/usb/drivers/usb/bind;'

[Install]
WantedBy=docker.service
```
