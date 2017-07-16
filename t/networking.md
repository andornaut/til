# Networking

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
