# Linux

## Upgrade Ubuntu from non-LTS to LTS

  - `$ gksudo update-manager -d`
  - Open "Settings"
  - Select the 3rd Tab called "Updates".
  - Set the "Notify me of a new Ubuntu version" dropdown menu to "For any new version".
  - `$ sudo do-release-upgrade -d`

## Search for Ubuntu package

```
sudo apt-get install apt-file
apt-file update
apt-file search ${pattern}
```

## Fix broken grub install

```
$ sudo mount /dev/sda1 /mnt \
  mount --bind /dev /mnt/dev \
  mount --bind /proc /mnt/proc \
  mount --bind /sys /mnt/sys \
  chroot /mnt

$ grub-install /dev/sda

$ umount /mnt/proc/ /mnt/dev /mnt/sys /mnt
```

## Magic SysRq Keys

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

## Monitoring and statistics

Command | Description
--- | ---
atop | AT Computing's System & Process Monitor
htop | ncurses-based process viewer for Linux
iostat | CPU and input/output statistics for devices and partitions
lsof | Lists on its standard output file information about files opened by processes
mtr | Combines  the functionality of the traceroute and ping programs in a single network diagnostic tool
nethogs | Net top tool grouping bandwidth per process
netstat | Print network connections, routing tables, interface statistics, masquerade connections, and multicast memberships
pidstat | Monitor individual tasks currently being managed by the Linux kernel
powertop | Power consumption and power management diagnosis tool
sensors | Print temperature sensors information
vmstat | Report virtual memory statistics

## Mount a network share in fstab

```
$ echo '
//$HOSTNAME/stuff /media/stuff cifs defaults,guest,ro 0 0' | sudo tee -a /etc/fstab
```

## Preserve $PATH when using sudo

- [StackOverflow](http://unix.stackexchange.com/a/83194)

```
$ sudo env "PATH=$PATH" command
```

## Pulseaudio: set default headphone output

- [StackOverflow](http://unix.stackexchange.com/questions/175930/change-default-port-for-pulseaudio-line-out-not-headphones)
- [pulseaudio-ctl](https://github.com/graysky2/pulseaudio-ctl)

```
set-sink-port 0 analog-output-headphones
```

## sysctl settings

- [Inotify instructions](https://confluence.jetbrains.com/display/IDEADEV/Inotify+Watches+Limit)

```
$ echo '
fs.file-max = 100000
fs.inotify.max_user_watches = 524288' | sudo tee -a /etc/sysctl.conf

$ sudo sysctl -pf
```

## Temporarily change the date/time using timedatectl

- [Wiki](https://wiki.archlinux.org/index.php/time)

```
timedatectl set-ntp false
timedatectl set-time "2016-06-20 10:00:00"
timedatectl set-time "10:00:00"

timedatectl  set-ntp true
```

## Wipe storage device using hdparm

- [Howto](https://wiki.archlinux.org/index.php/SSD_memory_cell_clearing)

```
hdparm -I /dev/sdX (result: Security:not enabled)
hdparm --user-master u --security-set-pass PasSWorD /dev/sdX
hdparm -I /dev/sdX (result: Security:enabled)
hdparm --user-master u --security-erase PasSWorD /dev/sdX
hdparm -I /dev/sdX (result: Security:not enabled)
```

## Xephyr

Grap mouse and keyboard input
```
CTRL + SHIFT + C
```

## debconf

```
sudo debconf-show ${packageName}

# or

sudo debconf-get-selections|grep -i ${packageName}
```

## Hardware info

```
# RAM
sudo dmidecode --type memory
```

## System stability

[Guide](https://blog.codinghorror.com/is-your-computer-stable/)

Run [mprime](ftp://mersenne.org/gimps/p95v289.linux64.tar.gz) and monitor system temperatures.

## Set default soundcard to USB sound device 

* [Arch wiki](https://wiki.archlinux.org/index.php/Advanced_Linux_Sound_Architecture#Set_the_default_sound_card)

```
sudo sed -i 's/\(options snd-usb-audio index.*\)/#\1/g' \
	/etc/modprobe.d/alsa-base.conf
```

## Application basenames

```
grep -li ${SEARCH_TEXT} /usr/share/applications/*.desktop
# or
dpkg -l | grep ${SEARCH_TEXT}
```

Basename | Name (or Generic Name)
--- | ---
gnome-control-center | System Settings
gnome-disks | Disk Utility
