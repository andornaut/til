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
[Mission Center](https://missioncenter.io/)|Monitor your CPU, Memory, Disk, Network and GPU usage
[netplan](https://netplan.readthedocs.io/en/stable/) - Network configuration
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
iftop | A real-time console-based network bandwidth monitoring tool
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

```bash
# Monitor a process' utilization
pid=$(ps -e|grep filectrl|cut -f1 -d' ');pidstat -h -r -u -v -p $pid 10
```

### Search for installed applications

```bash
grep -li ${SEARCH_TEXT} /usr/share/applications/*.desktop
# or
dpkg -l | grep ${SEARCH_TEXT}

# eg.
$ grep -li music /usr/share/applications/*.desktop
/usr/share/applications/spotify.desktop
```

### Search for Ubuntu packages by filename

```bash
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

```bash
# Use a TUI program to set default association
apt install libfile-mimeinfo-perl
mimeopen -d existing.pdf

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

```bash
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

```bash
# Exec into the container
flatpak enter org.mozilla.firefox bash

# Debug and possibly fix Firefox downloads not saving to the ~/Downloads folder outside of the sandbox
flatpak permission-show org.mozilla.firefox
flatpak permission-reset org.mozilla.firefox
```

## How-tos

* [How to create a swapfile](https://linuxize.com/post/create-a-linux-swap-file/)

### Upgrade Ubuntu from LTS to non-LTS

```bash
sudo sed -i 's/^\(Prompt\s*=\s*\)\w\+/\1normal/g' /etc/update-manager/release-upgrades
sudo do-release-upgrade
```

### Disable release upgrade notifications

* [Ask Ubuntu](https://askubuntu.com/questions/843778/how-to-disable-release-upgrade-notification-emails)

```bash
sudo sed -i 's/^\(Prompt\s*=\s*\)\w\+/\1never/g' /etc/update-manager/release-upgrades
echo -n "" > /var/lib/ubuntu-release-upgrader/release-upgrade-available
```

### Disable language switcher

Use `dconf watch /` to monitor changes.

Using dconf:

[@au [] specifies the type of the empty array](https://developer.gnome.org/glib/stable/gvariant-text.html#gvariant-text-type-annotations) (which would not parse otherwise)

```bash
# Remove language switcher keyboard shortcut
dconf write /org/gnome/desktop/wm/keybindings/switch-input-source '@au []'

# Disable "Intelligent Input Bus Daemon"
dconf write /org/gnome/settings-daemon/plugins/keyboard/active false

# Restart (replace) ibus-daemon
ibus-daemon -rd
```

Using dconf-editor:

```bash
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

```bash
sudo env "PATH=$PATH" command
```

### Increase inotify watches

* [Inotify instructions](https://confluence.jetbrains.com/display/IDEADEV/Inotify+Watches+Limit)

```bash
$ echo '
fs.file-max = 100000
fs.inotify.max_user_watches = 524288' | sudo tee -a /etc/sysctl.conf

$ sudo sysctl -pf
```

### Temporarily change the date/time using timedatectl

* [Wiki](https://wiki.archlinux.org/index.php/time)

```bash
timedatectl set-ntp false
timedatectl set-time "2016-06-20 10:00:00"
timedatectl set-time "10:00:00"
timedatectl set-ntp true
```

### Wipe storage device using hdparm

* [Howto](https://wiki.archlinux.org/index.php/SSD_memory_cell_clearing)

```bash
hdparm -I /dev/sdX (result: Security:not enabled)
hdparm --user-master u --security-set-pass PasSWorD /dev/sdX
hdparm -I /dev/sdX (result: Security:enabled)
hdparm --user-master u --security-erase PasSWorD /dev/sdX
hdparm -I /dev/sdX (result: Security:not enabled)
```

### Use debconf

```bash
sudo debconf-show ${packageName}

# or
sudo debconf-get-selections|grep -i ${packageName}
```
### Use Netplan

```bash
# Print configurations from /etc/netplan/*.yaml
sudo netplan get

# Apply (enable) all Netplan configurations
sudo netplan apply

sudo ip link set down enp9s0
ip address show enp9s0
sudo ip link set up enp9s0
```

### Install and configure NetworkManager

* [Permanently configuring a device as unmanaged in NetworkManager](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/8/html/configuring_and_managing_networking/configuring-networkmanager-to-ignore-certain-devices_configuring-and-managing-networking#permanently-configuring-a-device-as-unmanaged-in-networkmanager_configuring-networkmanager-to-ignore-certain-devices)

Install Network Manager:

```bash
sudo apt install network-manager-gnome

# Autostart nm-applet
$ cp /usr/share/applications/nm-applet.desktop ~/.config/autostart/

# Set Netplan configurations to be rendered by NetworkManager
$ sudo cat /etc/netplan/dhcp.yaml
network:
  version: 2
  renderer: NetworkManager
  ethernets:
    enp9s0:
      dhcp4: true

$ sudo systemctl restart NetworkManager
```

Network Manager configuration lives in `/etc/NetworkManager/conf.d` and `/usr/lib/NetworkManager/conf.d` and can be viewed by executing `sudo NetworkManager --print-config`.

The configuration in `/usr/lib/NetworkManager/conf.d/10-globally-managed-devices.conf` sets all devices except wifi and cellular to "unmanaged", but this doesn't appear to be applied:
```ini
[keyfile]
unmanaged-devices=*,except:type:wifi,except:type:gsm,except:type:cdma
```

Instead, create an override in `/etc/NetworkManager/conf.d/99-unmanaged-devices.conf` with content:
```ini
[keyfile]
unmanaged-devices=interface-name:veth*;type:bridge;type:loopback
```

Checked managed/unmanaged status with:

```bash
systemctl reload NetworkManager
nmcli device status
```

Note that [rfkill](https://manpages.ubuntu.com/manpages/xenial/man8/rfkill.8.html) may be "soft blocking" your wireless device, which you can unblock using:
```bash
rfkill unblock wlan
```

### Allow adm users to shutdown and reboot the system

Add the following to `/etc/sudoers.d/power`:

```
%adm ALL=NOPASSWD: /sbin/halt, /sbin/poweroff, /sbin/reboot
```

### Upgrade to the latest kernel

* [How to update kernel to the latest mainline](https://askubuntu.com/questions/119080/how-to-update-kernel-to-the-latest-mainline-version-without-any-distro-upgrade/142001#142000)

#### Install a HWE kernel

```bash
apt search linux-image-generic-hwe
sudo apt install linux-image-generic-hwe-24.04
```

#### Install a pre-packaged mainline kernel

1. Navigate to [kernel.ubuntu.com/mainline/](https://kernel.ubuntu.com/mainline/)
2. Navigate to the folder for the kernel version you're looking for, e.g.: `v6.13/`
3. Navigate to the folder for your architecture, e.g.: `amd64/`
4. Download the 4 `.deb` files `linux-headers*all*`, `linux-headers*amd64*`, `linux-image*`, `linux-modules*`
5. Install all 4 `.deb` files with `sudo apt install ./linux*deb`
6. Note that if the linux-image*deb file is "unsigned", then you will need to disable secure boot in your BIOS

#### Compile your own kernel

* [Building all Ubuntu extra modules - kernel compilation](https://forum.level1techs.com/t/building-all-ubuntu-extra-modules-kernel-compilation/224734)

```bash
# Download and extract the kernel source
wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.tar.gz
tar -xf linux-6.13.tar.gz
cd linux-6.13/

# Copy the config-* file that you want to base your new config on
cp -v /boot/config-$(uname -r) .config
make oldconfig

# Build the kernel *.deb files
scripts/config --disable SYSTEM_TRUSTED_KEYS
scripts/config --disable SYSTEM_REVOCATION_KEYS
scripts/config --set-str CONFIG_SYSTEM_TRUSTED_KEYS ""
scripts/config --set-str CONFIG_SYSTEM_REVOCATION_KEYS ""
fakeroot make -j7 # this built the kernel
make -j7 bindeb-pkg # this made the kernel debs

# Install the kernel *.deb files
cd ..
apt install ./linux-*deb

# To generate initrd for the running kernel set `kernelVersion=$(uname -r)`
kernelVersion=6.13.4-061304-generic
update-initramfs -c -k ${kernelVersion}

rootPartition=/dev/nvme0n1p2
update-grub
grub-install ${rootPartition}
```

#### Uninstall old kernel packages

```bash
dpkg --list | egrep -i --color 'linux-image|linux-headers|linux-modules' | awk '{ print $2 }'

version=6.8
apt purge \
  linux-headers-${version}* \
  linux-image-${version}* \
  linux-image-unsigned-${version}* \
  linux-modules-${version}* \
  linux-modules-extra-${version}*
```

### Install kernel driver for Realtek 

* [Realtek PCIe FE / GBE / 2.5G / 5G Ethernet Family Controller Software](https://www.realtek.com/Download/List?cate_id=584)
* [x870 ethernet/bluetooth drivers](https://www.reddit.com/r/linux4noobs/comments/1g6wyzb/x870_ethernetbluetooth_drivers/)
  
```bash
sudo apt install linux-headers-$(uname -r) 
sudo apt install build-essential debmake debhelper devscripts dkms
git clone https://github.com/awesometic/realtek-r8125-dkms.git
cd realtek-r8125-dkms/
sudo ./dkms-install.sh
sudo modprobe r8125
```

## Debugging and troubleshooting

* [LiveCdRecovery](https://help.ubuntu.com/community/LiveCdRecovery) - Chroot an Ubuntu ISO on a USB drive

### Fix broken grub install

```bash
efiPartition=/dev/nvme0n1p1
rootPartition=/dev/nvme0n1p2
mount ${rootPartition} /mnt \
  mount --bind /dev /mnt/dev \
  mount --bind /proc /mnt/proc \
  mount --bind /sys /mnt/sys \
  mount ${efiPartition} /boot/efi
  chroot /mnt

# To generate initrd for the running kernel set `kernelVersion=$(uname -r)`
kernelVersion=6.13.4-061304-generic
update-initramfs -c -k ${kernelVersion}
update-grub
grub-install ${rootPartition}

exit
reboot
```

### apt update 404

* [StackOverflow](https://askubuntu.com/questions/549777/getting-404-not-found-errors-when-doing-sudo-apt-get-update)

This error occurs when running `apt update` on an unsupported version of Ubuntu.

```bash
sudo sed -i -e 's/\([a-z]*.\?\)\?archive.ubuntu.com\|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
```

### Redshift.conf is not read when it is a symlink

[GitHub issue](https://github.com/jonls/redshift/issues/858)

1. Permit access to the symlink source by editing `/etc/apparmor.d/local/usr.bin.redshift`:

```
owner @{HOME}/PATH_TO_VAULT/redshift.conf r,
```

2. Restart [AppArmor](https://apparmor.net/):

```bash
sudo systemctl reload apparmor
```

### gnome-control-center segmentation fault on startup

* [StackOverflow](https://askubuntu.com/a/1356965)

This can be caused by accessing the "Sound" section/tab of Gnome Control Center on an installation provisioned by [ansible-workstation](https://github.com/andornaut/ansible-workstation).

```bash
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
```bash
sudo systemctl stop brltty-udev brltty
sudo systemctl disable brltty-udev brltty
sudo systemctl mask brltty-udev  brltty
sudo apt remove --purge brltty*
```
