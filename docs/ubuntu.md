# Ubuntu

* [./Gnome](./gnome.md)
* [./Systemd](./systemd.md)
* [./Xorg](./xorg.md)

## Applications and packages

Application | Description
--- | ---
[aseprite](https://www.aseprite.org/)|Pixel art tool
[blueman](https://wiki.archlinux.org/title/Blueman)|Bluetooth manager
[evince](https://en.wikipedia.org/wiki/Evince)|Document viewer
[flameshot](https://github.com/flameshot-org/flameshot/)|Screenshot capture
[gnome-disks](https://gitlab.gnome.org/GNOME/gnome-disk-utility)|Tool to manage storage devices
[heroic](https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher)|[Epic Games Store](https://www.epicgames.com) launcher
[itch](https://itch.io/app)|[itch.io](https://itch.io) game launcher
[lutris](https://lutris.net/)|Wine, Steam, etc game launcher
[obs](https://obsproject.com/)|Tool to record video and perform live streaming
[pcmanfm](https://sourceforge.net/projects/pcmanfm/)|File manager
[piper](https://github.com/libratbag/piper)|Configure mouse DPI
[resources](https://github.com/nokyan/resources)|Monitor your system resources and processes 
[retroarch](https://www.retroarch.com/)|ROM game and emulator launcher
[seahorse](https://wiki.gnome.org/Apps/Seahorse) | Tool to manage the Gnome keyring
[solaar](https://pwr-solaar.github.io/Solaar/)|Manage Logitech unifying receivers and devices
[uhubctl](https://github.com/mvp/uhubctl)|USB hub per-port power control
[usb-creator-gtk](https://launchpad.net/ubuntu/+source/usb-creator)|Tool to write ISO files to USB storage devices

### Desktop environment

Application | Description
--- | ---
[Betterlockscreen](https://github.com/betterlockscreen/betterlockscreen)|Lockscreen for X11
[BSPWM](https://github.com/baskerville/bspwm)|Tiling window manager for X11 ([ansible-role-bspwm](https://github.com/andornaut/ansible-role-bspwm/))
[clipboard](https://github.com/Slackadays/Clipboard)|TUI clipboard manager
[ElKowars wacky widgets (EWW)](https://github.com/elkowar/eww/)|Bar for X11 and Wayland
[Hyprland](https://hyprland.org/)|A dynamic tiling Wayland compositor
[Ly](https://github.com/fairyglade/ly)|Display manager
[River WM](https://github.com/riverwm/river)|Dynamic tiling Wayland compositor
[Rofi](https://github.com/davatorium/rofi)|Window switcher, application launcher and dmenu replacement
[Stalonetray](https://github.com/kolbusa/stalonetray)|System tray for X11
[Sway WM](https://swaywm.org/)|i3-compatible Wayland compositor
[Waybar](https://github.com/Alexays/Waybar)|Bar for Wayland

### Monitoring and statistics commands

* [GPU monitoring tools](https://www.cyberciti.biz/open-source/command-line-hacks/linux-gpu-monitoring-and-diagnostic-commands/)

Command | Description
--- | ---
atop | AT Computing's System & Process Monitor
htop | ncurses-based process viewer for Linux
intel_gpu_top, nvtop, radeontop | Monitor graphics devices
iostat | CPU and input/output statistics for devices and partitions
lsof | Lists on its standard output file information about files opened by processes
mtr | Combines  the functionality of the traceroute and ping programs in a single network diagnostic tool
nethogs | Net top tool grouping bandwidth per process
netstat | Print network connections, routing tables, interface statistics, masquerade connections, and multicast memberships
pidstat | Monitor individual tasks currently being managed by the Linux kernel
powertop | Power consumption and power management diagnosis tool
sensors | Print temperature sensors information
vmstat | Report virtual memory statistics

```
# Monitor a process' utilization
pid=$(ps -e|grep filectrl|cut -f1 -d' ');pidstat -h -r -u -v -p $pid 10
```

### Search for installed applications

```
grep -li ${SEARCH_TEXT} /usr/share/applications/*.desktop
# or
dpkg -l | grep ${SEARCH_TEXT}

# eg.
$ grep -li music /usr/share/applications/*.desktop
/usr/share/applications/spotify.desktop
```

### Search for Ubuntu packages by filename

```
sudo apt-get install apt-file
apt-file update
apt-file search ${pattern}
```

### Default applications

* [StackOverflow](https://unix.stackexchange.com/a/59088)
* [XDG MIME Applications](https://wiki.archlinux.org/title/XDG_MIME_Applications)

Default application associations can be configured in:

Path |Usage
--- | ---
`~/.config/mimeapps.list` | user overrides
`/etc/xdg/mimeapps.list` | system-wide overrides
`/usr/local/share/applications/mimeapps.list`, `/usr/share/applications/defaults.list`, `/usr/share/applications/mimeapps.list` | distribution-provided defaults

Desktop applications and their `.desktop` files are located in:

Path |Usage
--- | ---
`~/.local/share/applications/` | user applications
`/usr/share/applications/` | system-wide applications
`~/.local/share/flatpak/exports/share/applications/` | Flatpak --user applications
`/var/lib/flatpak/exports/share/applications/` | Flatpak --system applications

```
# Get the mimetype for a given file:
xdg-mime query filetype existing.pdf
> application/pdf

# Check system-wide default:
vim /usr/share/applications/defaults.list

# Check the current default application:
xdg-mime query default application/pdf

# List all applications
find /usr/share/applications/ \
  /usr/share/applications/ \
 ~/.local/share/flatpak/exports/share/applications/ \
 /var/lib/flatpak/exports/share/applications/ \
 -iname '*.desktop' \
 -exec basename {} \;|sort|uniq

# Set a new default application:
xdg-mime default org.gnome.Evince.desktop application/pdf

# View the override created above:
vim ~/.config/mimeapps.list
```

### Post-install cleanup / Uninstall packages

* [Ask Ubuntu](https://askubuntu.com/a/984800)

```
sudo apt purge evolution* language-selector-gnome whoopsie*

# Remove Snap
sudo rm -rf /var/cache/snapd/
sudo apt remove --purge snapd gnome-software-plugin-snap speech-dispatcher
sudo apt-mark hold snapd
rm -rf ~/snap

# Free up disk-space
sudo apt autoremove && sudo apt clean

# Uninstall other unnecessary programs
sudo apt remove --purge tracker-miner-fs
```

### Flatpak

* [Flatpak.org](https://flatpak.org/)

```
# Exec into the container
flatpak enter org.mozilla.firefox bash

# Debug and possibly fix Firefox downloads not saving to the ~/Downloads folder outside of the sandbox
flatpak permission-show org.mozilla.firefox
flatpak permission-reset org.mozilla.firefox
```

## How-tos

### Upgrade Ubuntu from LTS to non-LTS

```
sudo sed -i 's/^\(Prompt\s*=\s*\)\w\+/\1normal/g' /etc/update-manager/release-upgrades
sudo do-release-upgrade
```

### Disable release upgrade notifications

* [Ask Ubuntu](https://askubuntu.com/questions/843778/how-to-disable-release-upgrade-notification-emails)

```
sudo sed -i 's/^\(Prompt\s*=\s*\)\w\+/\1never/g' /etc/update-manager/release-upgrades
echo -n "" > /var/lib/ubuntu-release-upgrader/release-upgrade-available
```

### Disable language switcher

Use `dconf watch /` to monitor changes.

Using dconf:

[@au [] specifies the type of the empty array](https://developer.gnome.org/glib/stable/gvariant-text.html#gvariant-text-type-annotations) (which would not parse otherwise)

```
# Remove language switcher keyboard shortcut
dconf write /org/gnome/desktop/wm/keybindings/switch-input-source '@au []'

# Disable "Intelligent Input Bus Daemon"
dconf write /org/gnome/settings-daemon/plugins/keyboard/active false

# Restart (replace) ibus-daemon
ibus-daemon -rd
```

Using dconf-editor:

```
apt install dconf-editor
dconf-editor
# Navigate to: /org/gnome/desktop/wm/keybindings/switch-input-source
# Set to []
```

### Magic SysRq Keys

Force reboot an unresponsive system.

```
ALT + SHIFT + PRINT SCR + R E I S U B

unRaw      (take control of keyboard back from X),
 tErminate (send SIGTERM to all processes, allowing them to terminate gracefully),
 kIll      (send SIGKILL to all processes, forcing them to terminate immediately),
  Sync     (flush data to disk),
  Unmount  (remount all filesystems read-only),
reBoot.
```

### Mount a network share in fstab

```
# /etc/fstab
//$HOSTNAME/stuff /media/nas cifs defaults,guest,ro 0 0
```

Mount a subdirectory of a share as a non-root user

```
# /etc/fstab
# vers=1.0 is necessary for Samba to support Unix extnsions:
# https://askubuntu.com/a/995142
//$HOSTNAME/homes/src /home/andornaut/src cifs vers=1.0,user,uid=andornaut,gid=andornaut,credentials=/home/andornaut/.smb_credentials_on_$HOSTNAME,nofail 0 0

```

### Preserve $PATH when using sudo

* [StackOverflow](http://unix.stackexchange.com/a/83194)

```
sudo env "PATH=$PATH" command
```

### Increase inotify watches

* [Inotify instructions](https://confluence.jetbrains.com/display/IDEADEV/Inotify+Watches+Limit)

```
$ echo '
fs.file-max = 100000
fs.inotify.max_user_watches = 524288' | sudo tee -a /etc/sysctl.conf

$ sudo sysctl -pf
```

### Temporarily change the date/time using timedatectl

* [Wiki](https://wiki.archlinux.org/index.php/time)

```
timedatectl set-ntp false
timedatectl set-time "2016-06-20 10:00:00"
timedatectl set-time "10:00:00"
timedatectl set-ntp true
```

### Wipe storage device using hdparm

* [Howto](https://wiki.archlinux.org/index.php/SSD_memory_cell_clearing)

```
hdparm -I /dev/sdX (result: Security:not enabled)
hdparm --user-master u --security-set-pass PasSWorD /dev/sdX
hdparm -I /dev/sdX (result: Security:enabled)
hdparm --user-master u --security-erase PasSWorD /dev/sdX
hdparm -I /dev/sdX (result: Security:not enabled)
```

### Use debconf

```
sudo debconf-show ${packageName}

# or

sudo debconf-get-selections|grep -i ${packageName}
```

### Allow adm users to shutdown and reboot the system

Add the following to `/etc/sudoers.d/power`:

```
%adm ALL=NOPASSWD: /sbin/halt, /sbin/poweroff, /sbin/reboot
```

## Debugging and troubleshooting

* [LiveCdRecovery](https://help.ubuntu.com/community/LiveCdRecovery) - Chroot an Ubuntu ISO on a USB drive

### Fix broken grub install

```
mount /dev/sda1 /mnt \
  mount --bind /dev /mnt/dev \
  mount --bind /proc /mnt/proc \
  mount --bind /sys /mnt/sys \
  chroot /mnt

grub-install /dev/sda

umount /mnt/proc/ /mnt/dev /mnt/sys /mnt
```

### apt update 404

* [StackOverflow](https://askubuntu.com/questions/549777/getting-404-not-found-errors-when-doing-sudo-apt-get-update)

This error occurs when running `apt update` on an unsupported version of Ubuntu.

```
sudo sed -i -e 's/\([a-z]*.\?\)\?archive.ubuntu.com\|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
```

### Redshift.conf is not read when it is a symlink

[GitHub issue](https://github.com/jonls/redshift/issues/858)

1. Permit access to the symlink source by editing `/etc/apparmor.d/local/usr.bin.redshift`:

```
owner @{HOME}/PATH_TO_VAULT/redshift.conf r,
```

2. Restart [AppArmor](https://apparmor.net/):

```
sudo systemctl reload apparmor
```

### gnome-control-center segmentation fault on startup

* [StackOverflow](https://askubuntu.com/a/1356965)

This can be caused by accessing the "Sound" section/tab of Gnome Control Center on an installation provisioned by [ansible-workstation](https://github.com/andornaut/ansible-workstation).

```
rm -rf .config/dconf/
```

### SSH RSA authentication is not working

* [StackOverflow](https://askubuntu.com/questions/1404049/ssh-without-password-does-not-work-after-upgrading-from-18-04-to-22-04)

RSA SHA-1 is deprecated starting in Ubuntu 22.04. Re-enable it by adding the following
to `/etc/ssh/ssh_config`:

```
Host *
   # ...
   PubkeyAcceptedKeyTypes +ssh-rsa
```

### Disable brltty which can interfere with serial->USB adapters

dmesg output:
```
ch341 2-3:1.0: ch341-uart converter detected
usb 2-3: ch341-uart converter now attached to ttyUSB0
input: BRLTTY 6.4 Linux Screen Driver Keyboard as /devices/virtual/input/input21
usb 2-3: usbfs: interface 0 claimed by ch341 while 'brltty' sets config #1
ch341-uart ttyUSB0: ch341-uart converter now disconnected from ttyUSB0
```
Disable brltty:
```
sudo systemctl stop brltty-udev brltty
sudo systemctl disable brltty-udev brltty
sudo systemctl mask brltty-udev  brltty
sudo apt remove --purge brltty*
```
