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

### How to configure remote access on a client Linux device

* [OpenVPN Client Export](https://docs.netgate.com/pfsense/en/latest/packages/openvpn-client-export.html)

On the pfSense server:
1. Navigate to VPN -> OpenVPN -> Client Export
1. Scroll down to the "OpenVPN Clients" section
1. Click on the following button to download an *.ovpn file: Inline Configurations -> Most Clients

On the client Linux device:
1. Click on the nm-applet icon in the application tray
1. Navigate to VPN Connections -> Configure VPN
1. In the "Choose a Connection Type" prompt, select "Import a saved VPN configuration..."
1. Select the previously exported *.ovpn file

## Fix boot loop

* [Automatic filesystem check](https://docs.netgate.com/pfsense/en/latest/troubleshooting/filesystem-check.html)

1. Connect via [serial console](./networking.md#serial-console)
  * Serial settings: 115200/8/N/1 with Flow Control=Off
1. Press SPACE key during kernel boot to drop to `loader>` prompt
1. Run `boot -s` to boot into single user mode
1. Run `/sbin/fsck_ufs -fy /` multiple times until the root partition reports as "clean"
1. Run `reboot`
