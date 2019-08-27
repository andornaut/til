# Desktop

## Fan control

[StackOverflow](https://askubuntu.com/questions/22108/how-to-control-fan-speed)

```
sudo pwmconfig
sudo vim /etc/fancontrol
sudo systemctl start fancontrol
sudo systemctl enable fancontrol
```

## Find the program which grabbed a key combination

[StackOverflow](https://unix.stackexchange.com/a/261383)

```
tail -f /var/log/Xorg.0.log|grep -i -A 7 active

# In another terminal:
KEY="SUPER+space"; xdotool keydown ${KEY}; xdotool key XF86LogGrabInfo; xdotool keyup ${KEY}
```

### Sample output

```
[   603.755] Active grab 0x40a00021 (xi2) on device 'Virtual core keyboard' (3):
[   603.755]       client pid 5049 /usr/lib/ibus/ibus-ui-gtk3 
[   603.755]       at 603733 (from passive grab) (device thawed, state 1)
[   603.755]       xi2 event mask for device 3: 0xc000
[   603.755]       passive grab type 2, detail 0x41, activating key 65
[   603.755]       owner-events true, kb 1 ptr 1, confine 0, cursor 0x0
[   603.755] (II) End list of active device grabs
```

## Disable language switcher

Use `dconf watch /` to monitor changes.

### Using dconf-editor
```
apt-get install dconf-tools
dconf-editor
# Navigate to: /org/gnome/desktop/wm/keybindings/switch-input-source
# Set to []
```

### Using dconf

[@au [] specifies the type of the empty array](https://developer.gnome.org/glib/stable/gvariant-text.html#gvariant-text-type-annotations) (which would not parse otherwise)

```
# Remove language switcher keyboard shortcut
dconf write /org/gnome/desktop/wm/keybindings/switch-input-source '@au []'

# Disable "Intelligent Input Bus Daemon"
dconf write /org/gnome/settings-daemon/plugins/keyboard/active false

# Restart (replace) ibus-daemon
ibus-daemon -rd
```

## gnome-screensaver settings
- [StackOverflow](http://superuser.com/questions/727120/make-gnome-screen-lock-after-1-hour-not-15-minutes)
```
$ gnome-screensaver-command
$ gsettings get org.gnome.desktop.session idle-delay
$ gsettings get org.gnome.desktop.screensaver lock-delay
$ gsettings set org.gnome.desktop.session idle-delay 3600
$ gsettings set org.gnome.desktop.screensaver lock-delay 4000
```

## Mouse cursor

```
sudo update-alternatives --config x-cursor-theme
```

## GTK Fonts
```
$ sudo apt-get install -qy adwaita-icon-theme-full gnome-themes-standard
$ cat $HOME/.config/gtk-3.0/settings.ini
[settings]
gtk-icon-theme-name = Adwaita
gtk-theme-name = Adwaita
gtk-font-name = DejaVu Sans 11
```

## OSD
- [notifyosdconfig](https://github.com/amandeepg/notifyosdconfig)
- [notify-osd ppa](https://launchpad.net/~leolik/+archive/ubuntu/leolik)
- [Howto](http://www.webupd8.org/2016/05/customize-notifyosd-notification.html).

## xrandr

Disable external display
```
xrandr --output HDMI1 --off
```

Make laptop display the primary display
```
xrandr --output eDP1 --primary
```

Mirror laptop display to a higher-resolution external display
```
xrandr --output HDMI1 --auto --same-as eDP1 --scale-from 1366x768
```

Rotate monitor and set as primary
```
xrandr --output DP1-1 --auto --rotate left --left-of DP1-3 --primary
```

## xset

- [ArchWiki](https://wiki.archlinux.org/index.php/Display_Power_Management_Signaling)

Disable display power management
```
xset -dpms
```

Query
```
xset q
```
Set DPMS times: Standby: 600, Suspend: 1200, Off: 1800
```
xset dpms 600 1200 1800
```
  
