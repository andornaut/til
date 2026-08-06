# Networking

* [./Ubuntu](./ubuntu.md)

## Netplan

Ubuntu configures interfaces with [Netplan](https://netplan.readthedocs.io/en/stable/), which renders to either NetworkManager or systemd-networkd rather than configuring the interface itself.

```bash
# Print configurations from /etc/netplan/*.yaml
sudo netplan get

# Apply (enable) all Netplan configurations
sudo netplan apply

sudo ip link set down enp9s0
ip address show enp9s0
sudo ip link set up enp9s0
```

## Install and configure NetworkManager

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

## Disable dnsmasq / systemd-resolved

[StackOverflow](https://askubuntu.com/a/907249)

```
$ grep dns -B 2 /etc/NetworkManager/NetworkManager.conf
[main]
plugins=ifupdown,keyfile
dns=default

$ sudo rm /etc/resolv.conf
$ sudo systemctl restart NetworkManager
```

## List DNS servers

* [StackOverflow](https://unix.stackexchange.com/a/77633)

`/etc/resolv.conf` often lists a local caching nameserver

```
( nmcli dev list || nmcli dev show ) 2>/dev/null | grep DNS
```

## Query DNS

```
# Ask the system resolver
dig +short example.com

# Ask a specific nameserver, for a specific record type
dig @1.1.1.1 example.com MX

# Follow the delegation from the root nameservers down, which bypasses caches
dig +trace example.com

# Reverse lookup
dig -x 192.0.2.1
```

n.b. `dig` talks to the nameserver directly, so it ignores `/etc/hosts` and nsswitch; use `getent hosts ${name}` to resolve the way an application would.

## Show processes listening or connecting to the network

* [Find out what processes are making network connections](https://shallowsky.com/blog/linux/monitor-net-connections.html)

```
# Alternatives
netstat -A inet -p
ss -tp
ss -tpla
```

## HTTPS SSH tunnel (port forward through jump box)

```
ssh -vL 8443:webserver.example.com:443 -Nf jumpbox.example.com
```
* [Explain shell](https://explainshell.com/explain?cmd=ssh++-vL+8443%3Awebserver.example.com%3A443+-Nf+jumpbox.example.com)

## nmcli

```
# Show network info
nmcli dev show em1
```

## Test performance
```
iperf -c $HOST -u -b 1G
```

## Wifi
```
# Disable power management
sudo iwconfig wlan0 power off

# Increase txpower
sudo iwconfig wlan0 txpower 2dBm
```

## Serial console

* [Howto](https://opensource.com/article/20/5/tio-linux)

```
sudo dmesg |grep -E 'tty(S|U)'

sudo apt install tio

sudo tio /dev/ttyUSB0
# ctrl-t ?   List available key commands
```

## Enable PoE 802.3at on a Ruckus R610 wireless access point

n.b. The PoE port provides power to the LAN2 port

```bash
# Login with the web admin username and password
ssh -o HostKeyAlgorithms=+ssh-rsa -o PubkeyAcceptedAlgorithms=+ssh-rsa wifi
ruckus> enable
ruckus# config
ruckus(config)# ap <mac-address>
ruckus(config-ap)# power-mode 802.3at
ruckus(config-ap)# end
ruckus(config)# end
ruckus# reboot
```

Alternatively, if in a different CLI mode, which is based on how long after rebooting this process is started:

```bash
# Login with the web admin username and password
ssh -o HostKeyAlgorithms=+ssh-rsa -o PubkeyAcceptedAlgorithms=+ssh-rsa wifi
set power-mode at
```

## Enable the USB port on a Ruckus R610 wireless access point

```bash
# Login with the web admin username and password
ssh -o HostKeyAlgorithms=+ssh-rsa -o PubkeyAcceptedAlgorithms=+ssh-rsa wifi
ruckus> enable
ruckus# config
ruckus(config)# ap <mac-address>
ruckus(config-ap)# usb-port enable
ruckus(config-ap)# end
ruckus(config)# end
```
