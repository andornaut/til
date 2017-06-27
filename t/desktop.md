# Desktop

## gnome-screensaver settings
- [StackOverflow](http://superuser.com/questions/727120/make-gnome-screen-lock-after-1-hour-not-15-minutes)
```
$ gnome-screensaver-command
$ gsettings get org.gnome.desktop.session idle-delay
$ gsettings get org.gnome.desktop.screensaver lock-delay
$ gsettings set org.gnome.desktop.session idle-delay 3600
$ gsettings set org.gnome.desktop.screensaver lock-delay 4000
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
  
