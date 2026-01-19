# Networking

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
ssh ap.example.com
enable
config

# Select the target access point
ap xx:xx:xx:xx:xx:xx 
power-mode 802.3at
end
end
reboot
```

Alternatively, if in a different CLI mode, which is based on how long after rebooting this process is started:

```bash
ssh ap.example.com
set power-mode at
```
