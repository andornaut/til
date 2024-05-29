# Xorg

* [./Gnome](./gnome.md)
* [./Systemd](./systemd.md)
* [./Ubuntu](./ubuntu.md)

## xrandr

* [autorandr](https://github.com/phillipberndt/autorandr)

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

## Find the program that grabbed a key combination

[StackOverflow](https://unix.stackexchange.com/a/261383)

```
tail -f /var/log/Xorg.0.log|grep -i -A 7 active

# In another terminal:
KEY="SUPER+space"; xdotool keydown ${KEY}; xdotool key XF86LogGrabInfo; xdotool keyup ${KEY}
```

Sample output:

```
[   603.755] Active grab 0x40a00021 (xi2) on device 'Virtual core keyboard' (3):
[   603.755]       client pid 5049 /usr/lib/ibus/ibus-ui-gtk3
[   603.755]       at 603733 (from passive grab) (device thawed, state 1)
[   603.755]       xi2 event mask for device 3: 0xc000
[   603.755]       passive grab type 2, detail 0x41, activating key 65
[   603.755]       owner-events true, kb 1 ptr 1, confine 0, cursor 0x0
[   603.755] (II) End list of active device grabs
```

## Mouse cursor theme

```
sudo update-alternatives --config x-cursor-theme
```
