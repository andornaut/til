# Networking

## Disable dnsmasq / systemd-resolved

[StackOverflow](https://askubuntu.com/a/907249)

```
$ grep dns -B 2 /etc/NetworkManager/NetworkManager.conf 
[main]
plugins=ifupdown,keyfile
dns=default

$ sudo rm /etc/resolv.conf
$ sudo service network-manager restart
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
$ iperf -c $HOST -u -b 1G
```

## Wifi
```
# Disable power management
$ sudo iwconfig wlan0 power off

# Increase txpower
$ sudo iwconfig wlan0 txpower 2dBm
```
