# 3D Printing

* [./Electronics](./electronics.md)
* [./Keyboards](./keyboards.md)
* [andornaut@github /3d-models-and-filaments](https://github.com/andornaut/3d-models-and-filaments)
* [andornaut@github /splinter-keyboard](https://github.com/andornaut/splinter-keyboard)

## Communities

* [3D printing on Discord](https://discord.com/invite/huvWHBq)
* [/r/3Dprinting](https://old.reddit.com/r/3Dprinting)
* [/r/Ask3D](https://old.reddit.com/r/Ask3D/)

## Documentation and guides

* [3D Printing Joints](https://coloringchaos.github.io/form-fall-16/joints)
* [3D Printing High Quality Keycaps](https://candrews.integralblue.com/2024/03/3d-printing-high-quality-keycaps/)
* [Bambu Studio Fine Tuning: Tips and Tricks for X1 and P1P](https://3dprintbeginner.com/bambu-studio-fine-tuning-tips-and-tricks/)
* [Beginner’s Guide To 3D Printing](https://3dinsider.com/3d-printing-guide/)
* [CAD tips for 3D printing infographic](https://pbs.twimg.com/media/EOj347eUYAE4bZu?format=jpg&name=large)
* [CHT High Flow nozzle for the BambuLab X1 & P1P](https://www.cnckitchen.com/blog/cht-high-flow-nozzle-for-the-bambulab-x1-amp-p1p)
* [Common 3D printing problems troubleshooting guide](https://all3dp.com/1/common-3d-printing-problems-troubleshooting-3d-printer-issues/)
* [Filament guide](https://bambulab.com/en-ca/filament/collections)
* [Let's Print 3D](https://letsprint3d.net/)
  * [How to Finish 3D Prints with Chrome Paint](https://letsprint3d.net/guide-how-to-finish-3d-prints/)
  * [How to Print PETG Filament with Perfect Results](https://letsprint3d.net/how-to-print-petg/)

## Hardware

* [SUNLU FilaDryer S2 dry box](https://www.amazon.ca/gp/product/B0B1ZKTS44)
  * [Sunlu FilaDryer S2 Improvement Wedge](https://www.printables.com/model/219366-sunlu-filadryer-s2-improvement-wedge)

### BambuLab P1P

* [Bambu Lab P1P 3D printer](https://bambulab.com/en/p1)
  * [BIQU Panda Hotend](https://biqu.equipment/products/biqu-panda-hotend)
  * [Boron Nitride Paste](https://www.sliceengineering.com/products/boron-nitride-paste)
  * [CHT Brass High Flow Nozzle For Bambu Lab X1 P1P](https://www.aliexpress.com/item/1005005246470567.html)
  * [High Temperature Plate (PEI)](https://ca.store.bambulab.com/products/bambu-high-temperature-plate)
  * [Hotend Kit For Bambu Lab X1 Carbon X1-Carbon Combo P1P](https://www.aliexpress.com/item/1005005291012768.html)
  * [Lightyear G10 Build Plate](https://lightyeardirect.com/products/magnetic-garolite-g-10-composite-build-plate-for-bambulab-x1c-and-p1p)
  * [Maintenance](https://wiki.bambulab.com/en/p1/maintenance)
  * [Manual](https://wiki.bambulab.com/en/p1/manual)
  * [Printable upgrades](https://wiki.bambulab.com/en/p1/manual/p1p-upgrades)

#### Device discovery across subnets using Pfsense

 * [Network ports](https://wiki.bambulab.com/en/general/printer-network-ports)

1. Install the [UDP Broadcast Relay package](https://docs.netgate.com/pfsense/en/latest/packages/udpbroadcastrelay.html)
2. Configure one "interface" to bind the two subnets for each of the following ports: 1900, 1990, 2021
   * In addition to udp:2021, according to [this thread](https://forum.bambulab.com/t/use-ssdp-standards/7173/2), the p1p uses udp:1900, which is standard, whereas the X1C uses udp:1990, which is non-standard
3. Configure firewall rules to allow traffic between subnets on ports 1900, 1990, 2021
   * Use the [firewall log](https://docs.netgate.com/pfsense/en/latest/monitoring/logs/firewall.html) (Status > System Logs > Firewall) to figure out what rules to create 

## Supplies

* [Bambu Lab Liquid Glue for Build Plate (PLA/ABS/PETG)](https://ca.store.bambulab.com/products/liquid-glue-for-build-plate)

## Software

* [Autodesk Tinkercad](https://www.tinkercad.com/)
* [Bambu Studio (Windows and macOS)](https://bambulab.com/en/download/studio) 
  * [Linux](https://github.com/bambulab/BambuStudio) (build from source, then run the generated AppImage)
  * [OrcaSlicer](https://github.com/SoftFever/OrcaSlicer) - an improved fork of Bambu Studio
    ```
    # Install video playback dependencies:
    sudo apt install gstreamer1.0-libav gstreamer1.0-plugins-bad
    ```
* [FreeCAD](https://www.freecad.org/)
* [OnShape](https://cad.onshape.com/)
* [OpenSCAD](https://openscad.org/)

## Stores

### Filament

* [Filaments.ca](https://filaments.ca/)
* [Overture](https://www.overture3d.ca/)
* [Polymaker](https://ca.polymaker.com/) 
