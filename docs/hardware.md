# Hardware

## Hardware info

```
# Everything
sudo lshw -short

# Motherboard
sudo dmidecode --type baseboard

# RAM
sudo dmidecode --type memory

# PCI devices, including motherboard bridges and controllers
lspci
```

## Firmware

* [Linux Vendor Firmware Service (fwupd)](https://fwupd.org/lvfs/docs/users) | [ArchWiki](https://wiki.archlinux.org/title/fwupd)

```
fwupdmgr get-devices
fwupdmgr refresh
fwupdmgr get-updates
fwupdmgr update
```

## System stability

[Guide](https://blog.codinghorror.com/is-your-computer-stable/)

Run [mprime](ftp://mersenne.org/gimps/p95v289.linux64.tar.gz) and monitor system temperatures.

## Webcam

* [Arch wiki](https://wiki.archlinux.org/title/Webcam_setup)
* [v4l2-ctl](https://manpages.ubuntu.com/manpages/xenial/man1/v4l2-ctl.1.html)
* [udev rules example](https://wiki.archlinux.org/title/Udev#udev_rule_example)

Update settings
```
v4l2-ctl --list-devices

# The udev rule below creates a symlink from /dev/dell-ultrasharp-webcam to /dev/video0
v4l2-ctl -d /dev/dell-ultrasharp-webcam --list-ctrls-menus
v4l2-ctl -d /dev/dell-ultrasharp-webcam --set-ctrl backlight_compensation=1
v4l2-ctl -d /dev/dell-ultrasharp-webcam --set-ctrl zoom_absolute=200
```

Create a udev rule to apply settings whenever the webcam is connected
```
# Find the udev attributes
udevadm info --attribute-walk --path=$(udevadm info --query=path --name=/dev/video0)

# Dell UltraSharp
sudo bash -c 'cat > /etc/udev/rules.d/99-dell-ultrasharp-webcam.rules' <<-EOF
KERNEL=="video[0-9]*", SUBSYSTEM=="video4linux", SUBSYSTEMS=="usb", ATTRS{idVendor}=="413c", ATTRS{idProduct}=="c015", ATTR{index}=="0", SYMLINK+="dell-ultrasharp-webcam"
SYMLINK=="dell-ultrasharp-webcam", ACTION=="add", RUN+="/usr/bin/v4l2-ctl -d /dev/dell-ultrasharp-webcam --set-ctrl backlight_compensation=1"
SYMLINK=="dell-ultrasharp-webcam", ACTION=="add", RUN+="/usr/bin/v4l2-ctl -d /dev/dell-ultrasharp-webcam --set-ctrl zoom_absolute=200"
EOF

# Razer Kiyo
sudo bash -c 'cat > /etc/udev/rules.d/99-dell-ultrasharp-webcam.rules' <<-EOF
KERNEL=="video[0-9]*", SUBSYSTEM=="video4linux", SUBSYSTEMS=="usb", ATTRS{idVendor}=="1532", ATTRS{idProduct}=="0e03", ATTR{index}=="0", SYMLINK+="razer-kiyo-webcam"
SYMLINK=="razer-kiyo-webcam", ACTION=="add", RUN+="/usr/bin/v4l2-ctl -d /dev/razer-kiyo-webcam --set-ctrl backlight_compensation=1"
SYMLINK=="razer-kiyo-webcam", ACTION=="add", RUN+="/usr/bin/v4l2-ctl -d /dev/razer-kiyo-webcam --set-ctrl zoom_absolute=100"
EOF

# Reload rules
udevadm control --reload
udevadm trigger
```

## Make USB audio device the default

* [Arch wiki](https://wiki.archlinux.org/index.php/Advanced_Linux_Sound_Architecture#Set_the_default_sound_card)

```
sudo sed -i 's/\(options snd-usb-audio index.*\)/#\1/g' \
	/etc/modprobe.d/alsa-base.conf
```

## Pulseaudio: set default headphone output

- [StackOverflow](http://unix.stackexchange.com/questions/175930/change-default-port-for-pulseaudio-line-out-not-headphones)
- [pulseaudio-ctl](https://github.com/graysky2/pulseaudio-ctl)

```
set-sink-port 0 analog-output-headphones
```

## Pulseaudio / ALSA: save pavucontrol configuration

```
sudo alsactl store
```

## Fan control

* [StackOverflow](https://askubuntu.com/questions/22108/how-to-control-fan-speed)
* [fancontrol_gui](https://github.com/Maldela/fancontrol-gui)

```
sudo apt-get install lm-sensors fancontrol
sudo pwmconfig
sudo vim /etc/fancontrol
sudo systemctl start fancontrol
sudo systemctl enable fancontrol
```

## Configure an HP printer

```
sudo apt install cups hplip
sudo hp-setup
firefox http://localhost:631
```
