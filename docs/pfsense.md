# pfSense

## Increase swap

Netgate SG-3100 can run out of memory when updating [Suricata](https://suricata-ids.org/) or [pfBlocker-NG](https://docs.netgate.com/pfsense/en/latest/packages/pfblocker.html) rules. This can cause pfSense to hang until the kernel kills the offending process.

* [Netgate forum](https://forum.netgate.com/topic/133913/can-i-put-more-memory-in-my-sg-3100?_=1609784043701&lang=en-US)

1. Add this line to the file /etc/fstab
```md99 none swap sw,file=/swapfile.bin 0 0```
1. Create a blank file of size 1 GB:
```dd if=/dev/zero of=/swapfile.bin bs=4096 count=262144```
1. Enable swap (or just reboot as a test):
```swapon -a```
1. Verify swap is enabled:
```swapinfo```

## Domain Overrides over OpenVPN

* [OPN Sense forums](https://forum.opnsense.org/index.php?topic=6750.msg29210#msg29210)

Set "Outgoing Network Interfaces" to "LAN"

> The problem ist that unbound will by default send all replies out on all interfaces. We set the outbound interface to the LAN interface (while still listening on ALL). This routes the domain-overrides through the Tunnels and all others out the WAN interface.

## VPN

* [OpenVPN Site-to-Site Configuration Example with SSL/TLS](https://docs.netgate.com/pfsense/en/latest/recipes/openvpn-s2s-tls.html)

### Remote access

* [OpenVPN Client Export](https://docs.netgate.com/pfsense/en/latest/packages/openvpn-client-export.html)
* [Installing the OpenVPN Client on Linux](https://docs.netgate.com/pfsense/en/latest/recipes/openvpn-ra-client-linux.html)
* [OpenVPN Connect for Android](https://play.google.com/store/apps/details?id=net.openvpn.openvpn)

On the pfSense server:
1. Navigate to VPN -> OpenVPN -> Client Export
1. Scroll down to the "OpenVPN Clients" section
1. Click on the following button to download an *.ovpn file: Inline Configurations -> Most Clients

On a client Linux device:
1. Click on the nm-applet icon in the application tray
1. Navigate to VPN Connections -> Configure VPN
1. In the "Choose a Connection Type" prompt, select "Import a saved VPN configuration..."
1. Select the previously exported *.ovpn file

On a client Android or iOS device:
1. Export the "OpenVPN Connect (iOS/Android)" client configuration from the OpenVPN server
1. Install the [OpenVPN Connect app](https://play.google.com/store/apps/details?id=net.openvpn.openvpn)
1. From the OpenVPN Connect app's main menu, select Import Profile -> Upload File
1. Upload the "OpenVPN Connect (iOS/Android)" client configuration from above
1. From the OpenVPN Connect app's main menu, select Settings -> <scroll to the bottom> Advanced Settings -> IPv6
1. Select "IPV4-ONLY TUNNEL"

## Fix boot loop

* [Automatic filesystem check](https://docs.netgate.com/pfsense/en/latest/troubleshooting/filesystem-check.html)

1. Connect via [serial console](./networking.md#serial-console)
   * Serial settings: 115200/8/N/1 with Flow Control=Off
1. Press SPACE key during kernel boot to drop to `loader>` prompt
1. Run `boot -s` to boot into single user mode
1. Run `/sbin/fsck_ufs -fy /` multiple times until the root partition reports as "clean"
1. Run `reboot`
