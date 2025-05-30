# Retro games

* [Ansible role](https://github.com/andornaut/ansible-ctrl/tree/master/roles/games)
* Artwork
  * [System images (larger)](https://github.com/ruckage/es-theme-snes-mini/blob/master/art/icons_usa/)
  * [System images (smaller)](https://github.com/Vidnez/retro-systems-icons-for-GarlicOS/tree/master/system) 
  * [Thumbnails](http://thumbnails.libretro.com/)
* [Backup & Restore Android Retro Handhelds! (Video)](https://www.youtube.com/watch?app=desktop&v=EZhlyGXCSF0)
* [BIOS (GitHub)](https://github.com/Abdess/retroarch_system)
* [BIOS (Megathread)](https://r-roms.github.io/megathread/misc/#bios-files)
* [CD Romance](https://cdromance.com/) - ROM hacks
* [Homebrew games list](https://github.com/Jetup13/Retroid-Pocket-2-Plus-Wiki/wiki/Homebrew)
* [How to create CHD files](https://retropie.org.uk/docs/CHD-files/)
* [MyAbandonware](https://www.myabandonware.com/)
* [No-Intro](https://no-intro.org/)
  * [PropeR 1g1r Collection (2024)](https://archive.org/details/proper1g1r-collection)
  * [The Official No-Intro Convention](https://datomatic.no-intro.org/stuff/The%20Official%20No-Intro%20Convention%20(20071030).pdf)
* [Pico-8](https://www.lexaloffle.com/pico-8.php)
* [PortMaster](https://portmaster.games/)
* [RetroAchievements](https://retroachievements.org/)
* [Retro Game Crops](https://retrogamecorps.com/)
  * [Android Emulation Starter Guide](https://retrogamecorps.com/2022/03/13/android-emulation-starter-guide/#RetroArch)
  * [Android Handheld Starter Guide (Video)](https://www.youtube.com/watch?app=desktop&v=I4mqgcDYZFo)
  * [RetroArch Starter Guide](https://retrogamecorps.com/2022/02/28/retroarch-starter-guide/#Options)
* [Retro Game Talk](https://retrogametalk.com/repository/)
* [Retro-Sanctuary](https://retro-sanctuary.com/)
* [ROMhacking.net](https://www.romhacking.net)
  * [ROM hack patcher (online)](https://www.romhacking.net/patch/)
* [TheGamesDB](https://thegamesdb.net)
* [/r/Roms Megathread](https://r-roms.github.io/)
* [/v/'s Recommended Games Wiki](https://vsrecommendedgames.miraheze.org/wiki/Main_Page)
* [Video Game Museum](https://www.video-games-museum.com/en)
* [Vimm's Lair](https://vimm.net/)

## Hardware

### Anbernic RG35XX+ and RG40XXV

* [Anbernic official store](https://anbernic.com/)
* [Joystick removal mod](https://makerworld.com/en/models/658135#profileId-585228)
* [Mr.Shield Screen Protector](https://www.aliexpress.us/item/1005007478485479.html?gatewayAdapt=4itemAdapt)
* Custom firmware (CFW):
  * [GarlicOS on GitHub](https://github.com/GarlicOS/buildroot)
    * [GarlicOS 2.0 (Public Alpha) announcement](https://www.patreon.com/posts/92690050)
    * [patreon.com/blackseraph](https://www.patreon.com/blackseraph) - Lead developer of GarlicOS
  * [Knulli](https://knulli.org/)

#### MinUI

* [Anbernic](https://anbernic.com/)
* [patreon.com/blackseraph](https://www.patreon.com/blackseraph) - Lead developer of GarlicOS
* [GarlicOS 2.0 (Public Alpha) announcement](https://www.patreon.com/posts/92690050)
* [GarlicOS on GitHub](https://github.com/GarlicOS/buildroot)
* [Knulli](https://knulli.org/devices/anbernic/rg40xx-h/)
* [MinUI](https://github.com/shauninman/MinUI)
  * [MinUI Paks](https://github.com/shauninman/MinUI/blob/main/PAKS.md) 

1. Download the "base" and "extras" zip files from [the latest MinUI release](https://github.com/shauninman/MinUI/releases). eg. 
MinUI-20240106b-4-base.zip and MinUI-20240106b-4-extras.zip
1. Unzip the base zip file, and then:
   1. Copy rg35xx/dmenu.bin to the root of one of the unlabelled partitions (I'm not sure which one, but there are only a couple and the file is small anyway) of the stock Anbernic sdcard in the TF1 port 
   1. Copy Bios/ MinUI.zip and Roms/ to the root of the sdcard in the TF2 port
1. Unzip the extras zip file, and then:
   1. Delete all sub-folders of Emus/ and Tools/ *except* rg35xxplus/
   1. Delete all sub-folders of Emus/rg35xxplus/ *except* GG.pak/ and PCE.pak/
   1. Delete all sub-folders of Bios/ *except* GG/
   1. Copy Bios/ Emus/ and Tools/ folders to the root of the sdcard in the TF2 port
1. Copy additional BIOS and Roms files to the system-specific sub-folders of the Bios/ and Roms/ folders on the sdcard in the TF2 port

**Notes**

* MinUI maps Roms to Bios' to Emus by the system abbreviation, which is included in parenthesis in sub-folders of the Roms/ folder. eg. `Roms/Sega Game Gear (GG)/` maps `Bios/GG` maps to `Emus/rg35xxplus/GG.pak`
* MinUI cannot unzip 7z files, so prefer uncompressed Roms or zip files

#### Mustard OS / muOS

* [muOS](https://muos.xonglebongle.com/)
  * [Help (Documentation)](https://muos.dev/help)
  * [Pico-8](https://muos.dev/emulators/pico8)
  * [PortMaster](https://muos.dev/help/portmaster)
* [muOS Artwork](https://github.com/antiKk/muOS-Artwork)
* [muOS Discord](https://discord.gg/muos) 
* [muOS GitHub](https://github.com/MustardOS/)
  * [antiKk's Overlays](https://github.com/antiKk/muOS-Overlays)
  * [mugwomp93's Overlays](https://github.com/mugwomp93/muOS_Customization)
  * [Themes](https://github.com/MustardOS/theme)
 
Category | Path
--- | ---
Retroarch config | `/MUOS/info/config/retroarch.cfg`
ROMs | `/ROMS/`
Saves | `/MUOS/save/file/`
Save states | `/MUOS/save/state/`

##### Keyboard shortcuts

Key | Description
--- | ---
L1 L2 R1 R2 Power | Reboot
Menu Start | Exit
Menu X | Toggle RetroArch menu
Menu Y | Toggle FPS
Menu L1 | Slow motion
Menu L2 | Save state
Menu R1 | Fast forward
Menu R2 | Load last state
Menu Vol Up/Down | Increase/Decrease brightness
Menu L1 | Exit [DraStic](https://muos.dev/emulators/drastic)

### Analogue Pocket

* [Analogue.co](https://www.analogue.co/)
  * [Manual](https://assets.analogue.co/pdf/f48dbccc2a7c529e3ef677db3b4ab9d8/Analogue+Pocket+User+Manual+v1.2.pdf)
* [openFPGA Cores Inventory](https://openfpga-cores-inventory.github.io/analogue-pocket/)
* [Pocket Sync](https://github.com/neil-morrison44/pocket-sync) - GUI tool to update openFPGA cores, and manage save states, save files, and screenshots
* [Analogue Pocket Updater Utility](https://github.com/mattpannella/pocket-updater-utility) - CLI tool to update openFPGA cores and firmware

### Miyoo Mini+

* [Miyoo official store on AliExpress](https://miyoo.aliexpress.com/store/1101949807?shopId=1101949807)
* [Pico-8 wrapper](https://github.com/XK9274/pico-8-wrapper-miyoo)
* [Ports Collection](https://github.com/OnionUI/Ports-Collection)
* [/r/MiyooMini](https://www.reddit.com/r/MiyooMini/)
* Custom firmware (CFW):
  * [Allium](https://github.com/goweiwen/Allium)
  * [MinUI](https://github.com/shauninman/MinUI)

#### OnionOS

* [OnionOS](https://github.com/OnionUI/Onion)
  * [OnionOS emulators](https://onionui.github.io/docs/emulators)
  * [OnionOS ports collection](https://onionui.github.io/docs/ports)
 
##### Boxart

Add boxart or screenshots to `/mnt/SDCARD/Roms/<Emulator>/Imgs/` eg. `/mnt/SDCARD/Roms/GBA/Imgs`

##### Enable FTP server

* [/r/MiyooMini](https://www.reddit.com/r/MiyooMini/comments/11uzlrw/fyi_you_can_enable_ftp_on_the_miyoo_mini_to_copy/)

1. Navigate to: Apps > Package Manager > Apps
1. Install the "Terminal" app
1. Navigate to: Apps > Terminal
1. Use the on-screen keyboard to enter ```tcpsvd -vE 0.0.0.0 21 ftpd -w /```, then hit `enter`

##### RetroArch Core BIOS files

1. Find the names of recommended BIOS' for each of your emulators from the [Onion Wiki](https://onionui.github.io/docs/emulators/consoles)
1. Download the [BIOS files](https://github.com/Abdess/retroarch_system)
1. Add bios files to [`/mnt/SDCARD/BIOS`](https://onionui.github.io/docs/emulators#bios-files) on the Miyoo Mini+
1. Navigate to Apps > RetroArch > Load Core
1. Select a Core to test
1. Navigate to Apps > RetroArch -> Information > Core Information
1. Confirm that the BIOS files that you added are listed as "present"

### Retroid Pocket Mini / Flip 2

* [DIY Screen Replacement! (Video)](https://www.youtube.com/live/LiaTAjsIKEs)
* [How to Install Android 13 on the Retroid Pocket Mini](https://retrohandhelds.gg/how-to-install-android-13-retroid-pocket-mini/)
  * Important: Only reboot the Retroid into EDL mode when you're actually ready to press "Download" in QFIL
  * Important: Do NOT release the vol up,down and power buttons until after you press "Download" in QFIL
* [Obtainium-Emulation-Pack](https://github.com/RJNY/Obtainium-Emulation-Pack)
* [Official store](https://www.goretroid.com/en-ca/collections/frontpage/products/retroid-pocket-mini-handheld)
* [(Unofficial) stock firmware](https://github.com/TheGammaSqueeze/Retroid_Pocket_Stock_Firmware)
* [What the Retroid Pocket Mini Should Have Been](https://www.youtube.com/watch?v=quOhoJZiZmk&t=743s) - Follow these instructions to install Android 13, especially the button release timing for EDL and QFILL

#### Setup

1. Follow these guides:
  * [Android Emulation Starter Guide](https://retrogamecorps.com/2022/03/13/android-emulation-starter-guide/#RetroArch)
  * [Android Handheld Starter Guide (Video)](https://www.youtube.com/watch?app=desktop&v=I4mqgcDYZFo)
  * [RetroArch Starter Guide](https://retrogamecorps.com/2022/02/28/retroarch-starter-guide/#Options)
2. Copy [these custom-systems XMLs](https://github.com/GlazedBelmont/es-de-android-custom-systems) to `/mnt/sdcard/ES-DE/custom-systems/`
3. Create these folders on the removable sdcard (e.g.: `/storage/78DC-BF74/`):
```text
AZAHAR
BIOS
DOLPHIN
ES-DE
└──downloaded_media 
NETHERSX2
RETROARCH
├──saves
└──states 
ROMS
```
4. In ES-DE, configure the new location for "downloaded_media" in Menu>Other settings>Game media directory
5. In Retroarch, configure the new locations for saves and states in Settings>Directory
6. Point Azahar, Dolphin, and NetherSX2 apps to the new locations for their configurations

#### Rocknix custom firmware

* [Documentation](https://rocknix.org/)
  * [Retroid Pocket Mini details](https://rocknix.org/devices/retroid/retroid-pocket-mini/)
  * [Retroid Pocket Mini supported emulators and cores](https://github.com/ROCKNIX/distribution/blob/dev/documentation/PER_DEVICE_DOCUMENTATION/SD865/SUPPORTED_EMULATORS_AND_CORES.md)
* [Nightly builds](https://nightly.rocknix.org/) 
* [GitHub](https://github.com/ROCKNIX/distribution)
* [Unofficial nightly builds](https://nightly.link/tiopex/distribution/workflows/build-nightly/ci) (Download `sd865` builds for Retroid Pocket Mini)

Category | Path
--- | ---
Retroarch | `/storage/.config/retroarch/retroarch.cfg`
ROMs | `/storage/roms`
Saves | `/storage/roms`
Save states | `/storage/roms/savestates`

##### In-game keyboard shortcuts

Key | Description
--- | ---
Home<Hold> Start Start,  L1<Hold> Start+Select| Exit a game
Home<Hold> Y | Show FPS
Home<Hold> X | RetroArch Quick Menu
Home<Hold> R1 | Save to next slot
Home<Hold> L1 | Load last slot

### Xbox Series

* [gamr13.github.io](https://gamr13.github.io/)
* [Discord - Xbox Emulation Hub](https://discord.com/channels/1007582798598647889/1007590400220991549)
* [Install guide video (YouTube)](https://www.youtube.com/watch?v=boHTJj8rDe0)
* [Install guide video (YouTube)](https://www.youtube.com/watch?v=dV9GyKicrAg) (older)

#### USB disk drive permissions

From a Windows 10 computer or VM:

1. Format the USB disk drive as GPT and NTFS
1. From "File Explorer": right-click on the drive, then click "Properties"
1. Select the "Security" tab, click "Advanced", then click "Change permissions"
1. Click the "Select a principal" link next to the "Principal" label
1. Click "Advanced", then click "Find Now"
1. Double-click on "ALL APPLICATION PACKAGES"
1. Tick the "Full control" checkbox, then click "OK"
1. Tick the "Replace all child object permission ..." checkbox, then click "OK"

This will produce an error about not being able to change permissions on the "System Volume Information" folder, click "Continue" to move forward.

#### Disable Kiosk Mode

```
configFile=~/.var/app/org.libretro.RetroArch/config/retroarch/retroarch.cfg
sed -i 's/\(kiosk_mode_enable\s*=\).*/\1 "false"/g' ${configFile}
```

#### Fix "Failed to load content" error

* Try deleting and recreating the Playlist
* Try using unzipped (uncompressed) ROM files

## EmulationStation (ES-DE)

* [ES Applauncher](https://github.com/schattenphoenix/es_applauncher)
* [ES-DE)](https://es-de.org/)
* [es-de-android-custom-systems](https://github.com/GlazedBelmont/es-de-android-custom-systems)
* [ES-DE Android Apps](https://github.com/BinaryQuantumSoul/esde_android_apps)
  * [Android FAQ](https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ-ANDROID.md?ref_type=heads#every-time-i-reboot-my-device-es-de-is-starting-the-onboarding-process-why-is-this-happening)
* [ES-DE on Android Guide: My Favorite Launcher! (Video)](https://www.youtube.com/watch?v=X-bVwlMwobE) 

## RetroArch

* [Keyboard bindings for Menus/UI](https://docs.libretro.com/guides/input-and-controls/#menu-controls)
* [Libretro](https://www.libretro.com/)
  * [Docs](https://docs.libretro.com/)
* [RetroArch on Flathub](https://flathub.org/apps/details/org.libretro.RetroArch)
* [RetroArch Starter Guide](https://retrogamecorps.com/2022/02/28/retroarch-starter-guide/)
* [RGC: RetroArch Starter Guide](https://retrogamecorps.com/2022/02/28/retroarch-starter-guide/)
* [RGC: Shaders and Overlays on Retro Handhelds](https://retrogamecorps.com/2024/09/01/guide-shaders-and-overlays-on-retro-handhelds/)
  * [RGC Overlay Pack](https://github.com/retrogamecorps/RGC-Overlay-Pack/releases)
* [/r/RetroArch](https://www.reddit.com/r/RetroArch/)

### Cache directory

1. Navigate to Settings -> Directories
1. Configure a "Cache" directory
1. Save the configuration, and restart RetroArch

This may fix a copy/load error when running games with Nintendo GameCube/Dolphin.
This may also prevent temporary files from littering the content directories,
which may occur if RetroArch crashes before it is able to clean up.

### Cores

* [Emulation General Wiki](https://emulation.gametechwiki.com/index.php/Main_Page)
* [Retro Game Corps - Recommended RetroArch classic cores](https://retrogamecorps.com/2022/03/13/android-emulation-starter-guide/#RetroArch)

Platform | Desktop core (x64) | Anbernic RG40XXV (ARM) | Retroid Pocket Mini (ARM) | Retroid Pocket Flip 2 (Android)
--- | --- | --- | --- | ---
Arcade | | | | [FinalBurn Neo](https://docs.libretro.com/library/fbneo/)
Atari - 7800 | [ProSystem](https://docs.libretro.com/library/prosystem/) | [ProSystem](https://docs.libretro.com/library/prosystem/) | [ProSystem](https://docs.libretro.com/library/prosystem/) | [ProSystem](https://docs.libretro.com/library/prosystem/)
Atari - Jaguar | [Virtual Jaguar](https://docs.libretro.com/library/virtual_jaguar/) | [Virtual Jaguar](https://docs.libretro.com/library/virtual_jaguar/) | [Virtual Jaguar](https://docs.libretro.com/library/virtual_jaguar/) | [Virtual Jaguar](https://docs.libretro.com/library/virtual_jaguar/)
Atari - Lynx | [Handy](https://docs.libretro.com/library/handy/) | [Handy](https://docs.libretro.com/library/handy/) | [Handy](https://docs.libretro.com/library/handy/) | [Handy](https://docs.libretro.com/library/handy/)
NEC - PC Engine - TurboGrafx 16 (PCE) | [Beetle PCE FAST](https://docs.libretro.com/library/beetle_pce_fast/) | [Beetle PCE FAST](https://docs.libretro.com/library/beetle_pce_fast/) | [Beetle PCE FAST](https://docs.libretro.com/library/beetle_pce_fast/) | [Beetle PCE](https://docs.libretro.com/library/beetle_pce_fast/)
NEC - PC Engine CD - TurboGrafx-CD (PCECD) | [Beetle PCE FAST](https://docs.libretro.com/library/beetle_pce_fast/) | [Beetle PCE FAST](https://docs.libretro.com/library/beetle_pce_fast/) | [Beetle PCE FAST](https://docs.libretro.com/library/beetle_pce_fast/) | [Beetle PCE](https://docs.libretro.com/library/beetle_pce_fast/)
Nintendo - Game Boy (GB) | [Gambatte](https://docs.libretro.com/library/gambatte/) | [Gambatte](https://docs.libretro.com/library/gambatte/)  | [Gambatte](https://docs.libretro.com/library/gambatte/) | [Gambatte](https://docs.libretro.com/library/gambatte/)
Nintendo - Game Boy Advance (GBA) | [mGBA](https://docs.libretro.com/library/mgba/) | [mGBA](https://docs.libretro.com/library/mgba/) | [mGBA](https://docs.libretro.com/library/mgba/) | [mGBA](https://docs.libretro.com/library/mgba/)
Nintendo - Game Boy Color (GBC) | [Gambatte](https://docs.libretro.com/library/gambatte/) | [Gambatte](https://docs.libretro.com/library/gambatte/) | [Gambatte](https://docs.libretro.com/library/gambatte/) | [Gambatte](https://docs.libretro.com/library/gambatte/)
Nintendo - GameCube (GCN) | [Dolphin](https://docs.libretro.com/library/dolphin/) | -- | [Dolphin](https://docs.libretro.com/library/dolphin/) | [Dolphin](https://docs.libretro.com/library/dolphin/)
Nintendo - Nintendo 64 (N64) | [Mupen64Plus-Next](https://docs.libretro.com/library/mupen64plus/) | [Mupen64Plus-Next](https://docs.libretro.com/library/mupen64plus/) | [Mupen64Plus-Next](https://docs.libretro.com/library/mupen64plus/) | [Mupen64Plus-Next](https://docs.libretro.com/library/mupen64plus/)
Nintendo - Nintendo DS (NDS) | [melonDS DS](https://docs.libretro.com/library/melonds_ds/) | [DraStic](https://drastic-ds.com) (Standalone) | [DraStic](https://drastic-ds.com) (Standalone) | [melonDS DS](https://docs.libretro.com/library/melonds_ds/)
Nintendo - Nintendo Entertainment System (FC, NES) | [Nestopia](https://docs.libretro.com/library/nestopia/) | [FCEUmm](https://docs.libretro.com/library/fceumm/) | [Nestopia](https://docs.libretro.com/library/nestopia/) | [Nestopia](https://docs.libretro.com/library/nestopia/)
Nintendo - Super Nintendo Entertainment System (SFC, SNES) | [Snes9x](https://docs.libretro.com/library/snes9x/) | [Snes9x](https://docs.libretro.com/library/snes9x/) | [Snes9x](https://docs.libretro.com/library/snes9x/) | [Snes9x](https://docs.libretro.com/library/snes9x/)
Sega - 32X | [PicoDrive](https://docs.libretro.com/library/picodrive/) | [PicoDrive](https://docs.libretro.com/library/picodrive/) | [PicoDrive](https://docs.libretro.com/library/picodrive/) | [PicoDrive](https://docs.libretro.com/library/picodrive/)
Sega - Dreamcast (DC) | [Flycast](https://docs.libretro.com/library/flycast/) | [Flycast VL](https://docs.libretro.com/library/flycast/) | [Flycast](https://docs.libretro.com/library/flycast/) | [Flycast](https://docs.libretro.com/library/flycast/)
Sega - Game Gear (GG) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/)
Sega - Master System - Mark III (MS) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/)
Sega - Mega-CD - Sega CD | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/)
Sega - Mega Drive - Genesis (MD) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/)
Sega - Saturn (SS) | [Beetle Saturn](https://docs.libretro.com/library/beetle_saturn/) | [YabaSanshiro](https://docs.libretro.com/library/yabasanshiro/) | [YabaSanshiro](https://docs.libretro.com/library/yabasanshiro/) (Standalone) | [Beetle Saturn](https://docs.libretro.com/library/beetle_saturn/)
SNK Neo Geo | | | | [FinalBurn Neo](https://docs.libretro.com/library/fbneo/)
Sony - PlayStation (PSX) | [Beetle PSX HW](https://docs.libretro.com/library/beetle_psx_hw/) ([Beetle PSX](https://docs.libretro.com/library/beetle_psx/) on Xbox Series) | [PCSX ReARMed](https://docs.libretro.com/library/pcsx_rearmed/) | [PCSX ReARMed](https://docs.libretro.com/library/pcsx_rearmed/) | [Beetle PSX HW](https://docs.libretro.com/library/beetle_psx_hw/)
Sony - PlayStation 2 (PS2) | [PCSX2](https://docs.libretro.com/library/pcsx2/) | -- | AetherSX2 | [NetherSX2-classic](https://github.com/Trixarian/NetherSX2-classic)
Sony - PlayStation Portable (PSP) | [PPSSPP](https://docs.libretro.com/library/ppsspp/) | [PPSSPP](https://docs.libretro.com/library/ppsspp/) ([Core System Files](https://github.com/hrydgard/ppsspp), [Optimization](https://www.reddit.com/r/ANBERNIC/comments/1fkztb1/universal_pppsspp_configuration_for_unmatched/)) | [PPSSPP](https://docs.libretro.com/library/ppsspp/) | [PPSSPP](https://docs.libretro.com/library/ppsspp/)
The 3DO Company - 3DO | [Opera](https://docs.libretro.com/library/opera/) | [Opera](https://docs.libretro.com/library/opera/) | [Opera](https://docs.libretro.com/library/opera/) | [Opera](https://docs.libretro.com/library/opera/)

#### System specific cores

* [ScummVM](https://docs.libretro.com/library/scummvm/)

### Drivers

Type | Linux driver (flatpak)
--- | ---
Video | glcore
Audio | pulse
Microphone | alsathread
Input | x
Controller | udev
Record | ffmpeg
MIDI | alsa
Camera | video4linux2
Location | null

### Rewind

From [Retro Game Corps](https://retrogamecorps.com/2022/02/28/retroarch-starter-guide/):

> For the Rewind function to work, you will need to go into Settings > Frame Throttle > Rewind > ON. **This is not something I would recommend turning on as a global configuration**, because some systems (like Saturn or PS1) will be very slow with it on, and some (like PSP) may outright crash.

#### Configure the controller right-analog stick

Set the following base configuration:
```
# ~/.var/app/org.libretro.RetroArch/config/retroarch/retroarch.cfg
input_hold_fast_forward_axis = "+2"
input_rewind_axis = "-2"
```

#### Only enable rewind for certain cores

"Rewind" functionality is not supported by all cores, and may cause problems with some cores that nominally support it.

Console | Cores that don't support rewind (well)
--- | ---
Atari - Jaguar | [Virtual Jaguar](https://docs.libretro.com/library/virtual_jaguar/)
Nintendo - GameCube (GCN) | [Dolphin](https://docs.libretro.com/library/dolphin/)
Sega - Dreamcast (DC) | [Flycast](https://docs.libretro.com/library/flycast/)
Sega - Saturn (SS) | [Beetle Saturn](https://docs.libretro.com/library/beetle_saturn/)
Sony - PlayStation (PSX) | [Beetle PSX HW](https://docs.libretro.com/library/beetle_psx_hw/)
Sony - PlayStation Portable (PSP) | [PPSSPP](https://docs.libretro.com/library/ppsspp/)

Create a [Core Override](https://docs.libretro.com/guides/overrides/) file to unset the right-analog stick mappings for cores that do not support "rewind" or "fast-forward" or for consoles that make use of the right-analog stick, such as the Nintendo GameCube:
```
# Update the following core-specific config files:
# ~/.var/app/org.libretro.RetroArch/config/retroarch/config/dolphin-emu/dolphin-emu.cfg
# ~/.var/app/org.libretro.RetroArch/config/retroarch/config/Flycast/Flycast.cfg
# ~/.var/app/org.libretro.RetroArch/config/retroarch/config/Virtual\ Jaguar/Virtual\ Jaguar.cfg
input_hold_fast_forward_axis = "nul"
input_rewind_axis = "nul"
rewind_enable = "false"
```

### Shaders

* [RGC Shaders](https://github.com/retrogamecorps/RGC-Overlay-Pack/tree/main/RGC%20shaders)

Custom shaders must be added to the globally configured directory (see [this issue](https://github.com/flathub/org.libretro.RetroArch/issues/184)), which is
`~/.local/share/flatpak/app/org.libretro.RetroArch/current/active/files/share/libretro/shaders/` when
[RetroArch is installed via Flatpak](https://github.com/flathub/org.libretro.RetroArch).

Which type of shaders you can load is determined by the video driver used:

Video driver | Shader type
--- | ---
glcore | glsl (*.glsl, *.glslp)
vulcan | slang (*.slang, *.slangp)

Recommended shader: sharp-shimmerless from [Retro Game Corps' pack](https://github.com/retrogamecorps/RGC-Overlay-Pack/tree/main/RGC%20shaders)

### Thumbnails

On Flatpak installs, thumbnails are located in `~/.var/app/org.libretro.RetroArch/config/retroarch/thumbnails/`

n.b. Thumbnail filenames cannot contain ampersand "&" characters. If the ROM name contains an ampersand, then replace it with an underscore "_" in the filenames of its thumbnails. For example, if a ROM is named "Sonic & Knuckles + Sonic The Hedgehog 3 (USA).md", its thumbnails must be named
[Sonic _ Knuckles + Sonic The Hedgehog 3 (USA).png](http://thumbnails.libretro.com/Sega%20-%20Mega%20Drive%20-%20Genesis/Named_Boxarts/Sonic%20_%20Knuckles%20%2B%20Sonic%20The%20Hedgehog%203%20%28USA%29.png).

### Video drivers

* [Changing behavior of “gl” and “glcore” video drivers](https://www.libretro.com/index.php/changing-behavior-of-gl-and-glcore-video-drivers/)

1. Navigate to Settings -> Core
1. Set "Allow Cores to Switch the Video Driver" to "On"
1. Navigate to Settings -> Drivers
1. Set "Video Driver" to "vulkan" on Linux or "d3d12" on Xbox Series
1. Save the configuration, and restart RetroArch
1. Create a [Core Override](https://docs.libretro.com/guides/overrides/) file for each of the following cores:

Console | Core | Video driver on Linux | Video driver on Xbox Series
--- | --- | --- | ---
Nintendo - Nintendo 64 | Mupen64Plus-Next | glcore | gl
Nintendo - GameCube | Dolphin | glcore | d3d11
Sega - Dreamcast | Flycast | vulcan | d3d11
Sony - PlayStation (PSX) | Beetle PSX | -- | d3d12
Sony - PlayStation (PSX) | Beetle PSX HW | glcore | --

```
# Set the default video driver to "glcore":
# ~/.var/app/org.libretro.RetroArch/config/retroarch/retroarch.cfg
video_driver = "glcore"

# Set Flycast to "vulcan"
# ~/.var/app/org.libretro.RetroArch/config/retroarch/config/Flycast/Flycast.cfg
video_driver = "vulcan"
```

## Games

### Atari - 7800 - May 1986
```
Alien Brigade
Asteroids
Ballblazer
Centipede
Commando
Desert Falcon
Dig Dug
Donkey Kong
Donkey Kong Junior
Food Fight
Galaga
Joust
Mario Bros.
Midnight Mutants
Ms. Pac-Man
Ninja Golf
Pole Position II
Winter Games
Xevious
```
### Atari - Jaguar - November 23, 1993
```
Alien vs Predator
Attack of the Mutant Penguins
Cannon Fodder
Defender 2000
Fight for Life
Flashback - The Quest for Identity
International Sensible Soccer
Iron Soldier
Pinball Fantasies
Power Drive Rally
Protector - Special Edition
Raiden
Ruiner Pinball
Skyhammer
Super Burnout
Tempest 2000
Wolfenstein 3D
Worms
```
### Atari - Lynx - September 1, 1989
```
Battle Wheels
Blue Lightning
Checkered Flag
Chip's Challenge
Crystal Mines II
Eye of the Beholder
Gates of Zendocon
Klax
Ninja Gaiden
Rampart
Road Blasters
Robotron - 2084
Rygar
Shadow of the Beast
Shanghai
S.T.U.N. Runner
Todd's Adventures in Slime World
Toki
Tournament Cyberball
WarBirds
Xenophobe
Xybots
Zaku
Zarlor Mercenary
```
### NEC - PC Engine CD - TurboGrafx-CD - December 4, 1988
* [English translation ROM hacks](https://www.romhacking.net/?page=translations&genre=&platform=5&status=&languageid=12&perpage=20&order=&dir=&title=&author=&transsearch=Go)
* [Japanese releases that are playable in English](https://www.reddit.com/r/TurboGrafx/comments/g047qm/pc_engine_games_that_are_fully_in_english/)
```
Akumajou Dracula X - Chi no Rondo (Castlevania - Rondo of Blood, https://www.romhacking.net/translations/846/)
Bonk III - Bonk's Big Adventure
Cosmic Fantasy 2
Dragon Slayer - The Legend of Heroes
Dungeon Explorer II
Gate of Thunder + Bonk's Adventure + Bonk's Revenge
Gradius II - Gofer no Yabou
Lords of Thunder
R-Type Complete CD
Spriggan Mark 2 - Re Terraform Project
Valis III
Valis IV (https://www.reddit.com/r/TurboGrafx/comments/1cegjmb/valis_iv_english_translation/)
Wonder Boy III - Monster Lair
Ys Book I & II
Ys IV - The Dawn of Ys (https://www.romhacking.net/translations/514/)
```
### NEC - PC Engine - TurboGrafx 16 (PCE, TG-16) - October 30, 1987
```
Air Zonk
Alien Crush
Blazing Lazers
Bloody Wolf
Bomberman '93
Bonk's Adventure
Bonk's Revenge
Cadash
Devil's Crush
Dragon's Curse
Dungeon Explorer
Legendary Axe, The
Magical Chase
Military Madness
Neutopia II
Neutopia
New Adventure Island
Soldier Blade
Splatterhouse
```
### Nintendo - Game Boy (GB) - April 21, 1989
```
Bubble Bobble
BurgerTime Deluxe
Castlevania II - Belmont's Revenge
Donkey Kong
Final Fantasy Adventure
Gradius - The Interstellar Assault
Kirby's Dream Land 2
Mario's Picross
Mega Man V
Metroid II - Return of Samus
Mole Mania
Operation C
Pokemon - Red Version (https://github.com/jojobear13/shinpokered)
Pokemon - Yellow Version - Special Pikachu Edition
Super Mario Land 2 - 6 Golden Coins
Super Mario Land
Tetris - Rosy Retrospection (https://www.romhacking.net/hacks/5813/)
Tiny Toon Adventures - Babs' Big Break
Wario Land II
Wario Land - Super Mario Land 3
```
### Nintendo - Game Boy Advance (GBA) - March 21, 2001
```
Advance Wars 2 - Black Hole Rising
Advance Wars
Alien Hominid
Apotris (https://akouzoukos.com/apotris/)
Asterix & Obelix XXL
Astro Boy - Omega Factor
Banjo-Kazooie - Grunty's Revenge
Bookworm
Breath of Fire
Castlevania - Aria of Sorrow
Chessmaster
Crash Bandicoot - The Huge Adventure
Double Dragon Advance
Dragon Ball Z - Buu's Fury
Dragon Ball Z - The Legacy of Goku II
Final Fantasy Tactics Advance
Final Fantasy VI Advance
Fire Emblem - The Sacred Stones
F-Zero - Maximum Velocity
Golden Sun - The Lost Age
Golden Sun
Goodboy Galaxy (demo, https://goodboygalaxy.itch.io/goodboy-galaxy-demo)
Gunstar Super Heroes
Hamtaro - Ham-Ham Games
Hamtaro - Ham-Ham Heartbreak
Harvest Moon - Friends of Mineral Town
Justice League Heroes - The Flash
Kirby & The Amazing Mirror
Kirby - Nightmare in Dream Land
Legend of Zelda, The - The Minish Cap
Lord of the Rings, The - The Two Towers
Mario Kart - Super Circuit
Mario & Luigi - Superstar Saga
Megaman - Battle Network 3 - Blue Version
Mega Man Zero
Metroid Fusion
Metroid - Zero Mission (https://www.romhacking.net/reviews/7650/)
Mother 3
Ninja Five-0
Pokemon - Emerald Version
Pokemon - FireRed Version
Pokemon - LeafGreen Version
Pokemon Mystery Dungeon - Red Rescue Team
Pokemon Pinball - Ruby & Sapphire
Pokemon Unbound (https://www.pokecommunity.com/showthread.php?t=382178)
Shining Force - Resurrection of the Dark Dragon
Sigma Star Saga
Sonic Advance 3
Sonic Pinball Party
Spider-Man - Mysterio's Menace
Spyro 2 - Season of Flame
Super Mario Advance 3 - Yoshi's Island
Super Monkey Ball Jr.
Sword of Mana
TMNT
Tony Hawk's Pro Skater 2
Ultimate Card Games
Wario Land 4
WarioWare, Inc. - Mega Microgame$!
```
### Nintendo - Game Boy Color (GBC) - October 21, 1998
```
Dragon Warrior III
Dragon Warrior Monsters 2 - Tara's Adventure
Game & Watch Gallery 2
Game & Watch Gallery 3
Harry Potter and the Chamber of Secrets
Harry Potter and the Sorcerer's Stone
Legend of Zelda, The - Link's Awakening DX (https://www.romhacking.net/hacks/3597/)
Legend of Zelda, The - Oracle of Ages
Legend of Zelda, The - Oracle of Seasons
Magi Nation
Mario Tennis
Metal Gear Solid
Pocket Bomberman
Pokemon - Crystal Version
Pokemon Pinball
Revelations - The Demon Slayer
Shantae
Star Wars Episode I - Obi-Wan's Adventures
Tobu Tobu Girl Deluxe (https://tangramgames.itch.io/tobu-tobu-girl-deluxe)
Wario Land 3
Wario Land II
Wendy - Every Witch Way
```
### Nintendo - GameCube (GCN) - September 14, 2001
```
Animal Crossing
Beyond Good & Evil
F-Zero GX
Gotcha Force
Ikaruga
Legend of Zelda, The - The Wind Waker
Legend of Zelda, The - Twilight Princess
Luigi's Mansion
Mario Kart - Double Dash!!
Metroid Prime 2 - Echoes
NBA Street Vol. 2
Need for Speed - Underground 2
Paper Mario - The Thousand-Year Door
Pikmin 2
Skies of Arcadia Legends
Sonic Adventure 2 - Battle
SSX Tricky
Star Wars - Rogue Squadron II - Rogue Leader
Super Mario Sunshine
Super Monkey Ball
Super Smash Bros. Melee
Timesplitters 2
Tony Hawk's Pro Skater 3
Viewtiful Joe 
```
### Nintendo - Nintendo 64 (N64) - June 23, 1996
```
007 - The World Is Not Enough
1080 Snowboarding
Army Men - Sarge's Heroes 2
Banjo-Kazooie
Banjo-Tooie
Blast Corps
Bomberman 64
Castlevania - Legacy of Darkness
Conker's Bad Fur Day
Cruis'n World
Diddy Kong Racing
Donkey Kong 64
Doom 64
Excitebike 64
F-Zero X
Goemon's Great Adventure
GoldenEye 007
Harvest Moon 64
Indiana Jones and the Infernal Machine
International Superstar Soccer 2000
Jet Force Gemini
Killer Instinct Gold
Kirby 64 - The Crystal Shards
Legend of Zelda, The - Majora's Mask
Legend of Zelda, The - Ocarina of Time
Mario Golf
Mario Kart 64
Mario Party 3
Mario Tennis
Mega Man 64
Mischief Makers
Mystical Ninja Starring Goemon
Neon Genesis Evangelion
NFL Blitz
Ogre Battle 64 - Person of Lordly Caliber
Paper Mario
Perfect Dark
Pilotwings 64
Pokemon Puzzle League
Pokemon Snap
Pokemon Stadium 2
San Francisco Rush - Extreme Racing
Sin and Punishment - Successor of the Earth  (https://www.romhacking.net/translations/920/)
Star Fox 64
Star Wars Episode I - Racer
Star Wars - Rogue Squadron
Super Mario 64
Super Smash Bros.
Turok 2 - Seeds of Evil
Turok - Dinosaur Hunter
Wave Race 64 - Kawasaki Jet Ski
WCW-nWo Revenge
WinBack - Covert Operations
WWF No Mercy
Yoshi's Story
```
### Nintendo - Nintendo DS (NDS) - November 21, 2004
```
Advance Wars - Dual Strike
Another Code - Two Memories
Castlevania - Dawn of Sorrow
Castlevania - Order of Ecclesia
Chrono Trigger
Dragon Quest IV - Chapters of the Chosen
Dragon Quest IX - Sentinels of the Starry Skies
Dragon Quest V - Hand of the Heavenly Bride
Fire Emblem - Shadow Dragon
Ghost Trick - Phantom Detective
Grand Theft Auto - Chinatown Wars
Kingdom Hearts - 358-2 Days
Kirby - Canvas Curse
Kirby Super Star Ultra
Mario Kart DS
Mario & Luigi - Bowser's Inside Story
Mega Man Zero Collection
Mega Man ZX
Might & Magic - Clash of Heroes
New Super Mario Bros.
Nine Hours, Nine Persons, Nine Doors
Peggle Dual Shot
Phoenix Wright - Ace Attorney
Picross DS
Pokemon - Black Version 2
Pokemon - HeartGold Version
Pokemon Mystery Dungeon - Explorers of Sky
Pokemon - Platinum Version
Professor Layton and the Curious Village
Professor Layton and the Diabolical Box
Professor Layton and the Unwound Future
Rune Factory 3 - A Fantasy Harvest Moon
Shin Megami Tensei - Devil Survivor
Solatorobo - Red the Hunter
Sonic Rush
Trauma Center - Under the Knife
WarioWare - Touched!
World Ends with You, The
```
### Nintendo - Nintendo Entertainment System (FC, NES) - October 18, 1985
```
Alwas Awakening
Adventure Island 3
Adventures of Lolo
Batman - The Video Game
Battletoads
Bionic Commando
Blades of Steel
Blaster Master
Bubble Bobble
Castlevania III - Dracula's Curse
Chip 'n Dale - Rescue Rangers
Chip 'n Dale - Rescue Rangers 2
Cobra Triangle
Contra
Crisis Force
Crystalis
Darkwing Duck
Donkey Kong
Double Dragon II - The Revenge
Double Dribble
Dragon Warrior III
Dragon Warrior IV
Dr. Mario
DuckTales
Excitebike
Faxanadu
G.I. Joe - A Real American Hero
Ghosts'n Goblins
Gradius
Guardian Legend, The
Gun Nac
Kid Icarus
Kirby's Adventure
Legend of Zelda, The
Life Force
Little Samson
Maniac Mansion
Mega Man 2
Mega Man 3
Mega Man 4
Mega Man 5
Mega Man 6
Metroid
Might and Magic - Book One - Secret of the Inner Sanctum
NES Open Tournament Golf
Ninja Gaiden
Ninja Gaiden II - The Dark Sword of Chaos
Pac-Man - Championship Edition (https://retroachievements.org/game/16549)
Paperboy
Pin Bot
Punch-Out!!
Q-bert
R.C. Pro-Am
River City Ransom
Rygar
StarTropics
Super Dodge Ball
Super Mario Bros. 2
Super Mario Bros. 3
Super Mario Bros.
Tecmo Super Bowl 2024 (https://tecmobowl.org/files/file/868-tecmo-super-bowl-2024/)
Teenage Mutant Ninja Turtles II - The Arcade Game
Teenage Mutant Ninja Turtles III - The Manhattan Project
Teenage Mutant Ninja Turtles - Tournament Fighters
Vice - Project Doom
Wizardry - Proving Grounds of the Mad Overlord
Zelda II - The Adventure of Link (https://github.com/ShadowOne333/Zelda2-Redux)
Zoda's Revenge - StarTropics II
```
### Nintendo - Super Nintendo Entertainment System (SFC, SNES) - November 21, 1990
```
ActRaiser
Adventures of Batman & Robin, The
Aerobiz Supersonic
Batman Returns
Biker Mice from Mars
Breath of Fire II
Chrono Trigger (https://www.romhacking.net/hacks/3147/)
Contra III - The Alien Wars (https://github.com/VitorVilela7/SA1-Root/tree/master/Contra-III)
Donkey Kong Country 2 - Diddy's Kong Quest
Donkey Kong Country 3 - Dixie Kong's Double Trouble!
Donkey Kong Country
EarthBound
Final Fantasy III
Final Fantasy II
Final Fantasy - Mystic Quest
F-Zero
Gradius III (https://github.com/VitorVilela7/SA1-Root/tree/master/Gradius-III)
Harvest Moon
Hook
Illusion of Gaia
Judge Dredd
Ken Griffey Jr. Presents Major League Baseball
Killer Instinct
King of Dragons
Kirby's Dream Land 3
Kirby Super Star
Legend of Zelda, The - A Link to the Past (https://www.romhacking.net/reviews/11915)
Lemmings
Lion King, The
Lufia II - Rise of the Sinistrals
Magical Quest Starring Mickey Mouse, The
Mario Paint
Marvel Super Heroes in War of the Gems
Mega Man X3 (https://www.romhacking.net/hacks/4086/)
Mega Man X2
Mega Man X
Metal Warriors
Mighty Morphin Power Rangers - The Fighting Edition
Ms. Pac-Man
Pilotwings
Secret of Mana (https://www.romhacking.net/reviews/8862/)
Shin Kidou Senki Gundam W - Endless Duel
Side Pocket
SimCity 2000 - The Ultimate City Simulator
Space Megaforce
Sparkster
Star Fox 2
Star Fox EX (https://www.romhacking.net/hacks/7285/)
Star Fox (https://www.romhacking.net/hacks/7163/)
Star Trek - The Next Generation - Future's Past
Street Fighter II Turbo
Super Adventure Island II
Super Bomberman
Super Castlevania IV
Super Double Dragon
Super Ghouls 'N Ghosts
Super Mario All-Stars
Super Mario Kart
Super Mario RPG - Legend of the Seven Stars
Super Mario World 2 - Yoshi's Island
Super Mario World
Super Metroid
Super Punch-Out!!
Super R-Type (https://github.com/VitorVilela7/SA1-Root/tree/master/Super-R-Type)
Super Tennis
Super Turrican 2
Tecmo Super Bowl
Teenage Mutant Ninja Turtles IV - Turtles in Time
Teenage Mutant Ninja Turtles - Tournament Fighters
Terranigma
U.N. Squadron
Where in the World Is Carmen Sandiego
X-Men - Mutant Apocalypse
Zombies Ate My Neighbors
```
### Pico-8 - April 2015
```
Alpine Alpaca
Ascent
Beckon the Hellspawn
Birds With Guns
Breakout Hero
Cab Ride
Celeste
Cherry Bomb
Combo Pool
Dank Tomb
Dinky Kong
Golf Sunday
High Stakes
Just One Boss
Kalikan
Low Mem Sky
Mai-Chan's Sweet Buns
Marballs 2
Mistigri
Mot's 8-Ball Pool
Mot's Grand Prix
PICOHOT
PICORACER-2048
Pico World Race
Shooting Star
Splore
Steel Surge Revolution
Suika Game Demake
Swordfish
Wizards Rule
Yggdrasil
```
### Sega - 32X - November 21, 1994
```
After Burner Complete
Blackthorne
Knuckles' Chaotix
Kolibri
Metal Head
Mortal Kombat II
NBA Jam - Tournament Edition
Pitfall - The Mayan Adventure
Space Harrier
Star Trek - Starfleet Academy - Starship Bridge Simulator
Star Wars Arcade
Stellar Assault (aka Shadow Squadron)
Tempo
Virtua Fighter
Virtua Racing Deluxe
WWF WrestleMania - The Arcade Game
Zaxxon's Motherbase 2000
```
### Sega - Dreamcast (DC) - November 27, 1998
```
Bangai-O
Border Down
Capcom vs. SNK
Crazy Taxi
Cyber Troopers - Virtual-On - Oratorio Tangram
Dead or Alive 2
Dynamite Cop!
Fur Fighters
Garou - Mark of the Wolves
Grandia II
Hydro Thunder
Ikaruga
Jet Grind Radio
Le Mans 24 Hours
Legacy of Kain - Soul Reaver
Mars Matrix
Marvel vs. Capcom 2
MDK2
MSR - Metropolis Street Racer
NBA 2K1
NFL 2K2
NFL Blitz 2000
Phantasy Star Online Ver. 2
Power Stone
Power Stone 2
Project Justice
Rayman 2 - The Great Escape
Record of Lodoss War
Resident Evil - Code - Veronica
Re-volt
Rez
Sega Bass Fishing
Sega Rally 2
Shenmue
Skies of Arcadia
Sonic Adventure
Sonic Adventure 2
Soulcalibur
Space Channel 5
Spider-Man
Street Fighter Alpha 3
Street Fighter III - 3rd Strike
Super Street Fighter II X for Matching Service (https://dreamcast-talk.com/forum/viewtopic.php?f=22&t=13803#p142158)
Sword of the Berserk - Guts' Rage
The King of Fighters - Dream Match 1999
Tony Hawk's Pro Skater 2
Toy Commander
Virtua Fighter 3tb
Virtua Tennis
```
### Sega - Game Gear (GG) - October 6, 1990
```
Ax Battler - A Legend of Golden Axe
Baku Baku
Castle of Illusion Starring Mickey Mouse
Coca-Cola Kid (https://www.romhacking.net/translations/1189/)
Columns
Crystal Warriors
Defenders of Oasis
Fantasy Zone
Fatal Fury Special
Frank Thomas Big Hurt Baseball
Godzilla - Kaijuu Daishingeki (Godzilla - Monsters Attack, https://www.romhacking.net/translations/4140/)
Joe Montana Football
Jurassic Park
Legend of Illusion Starring Mickey Mouse
Lucky Dime Caper Starring Donald Duck, The
Lunar - Sanposuru Gakuen (https://www.romhacking.net/translations/1454/)
Mighty Morphin Power Rangers - The Movie
Ninja Gaiden
Power Strike II
Ristar
Shining Force - The Sword of Hajya
Shining Force Gaiden - Final Conflict
Shinobi
Shinobi II - The Silent Fury
Sonic Drift 2
Sonic The Hedgehog - Triple Trouble
Tails Adventure
World Series Baseball '95
X-Men
```
### Sega - Master System - Mark III (MS) - October 20, 1985
```
Alex Kidd in Miracle World
Alex Kidd in Shinobi World
Astérix
Black Belt
California Games
Deep Duck Trouble Starring Donald Duck
Double Dragon
Fantasy Zone II
GG Aleste 3
Golden Axe Warrior
Golvellius - Valley of Doom
Hang On
Land of Illusion Starring Mickey Mouse
Magical Puzzle Popils
Master of Darkness
Masters of Combat
Miracle Warriors - Seal of The Dark Lord
Ninja Gaiden
Phantasy Star (https://www.romhacking.net/translations/1069/)
Power Strike
Prince of Persia
Psycho Fox
Rampage
Rastan
Reggie Jackson Baseball
Shinobi
Sonic The Hedgehog
Space Harrier
Sylvan Tale (https://www.romhacking.net/translations/67/)
Ultima IV - Quest of the Avatar
Wonder Boy in Monster World
Ys - The Vanished Omens
```
### Sega - Mega-CD - Sega CD - December 12, 1991
```
AH3 - Thunderstrike
Amazing Spider-Man vs. The Kingpin, The
Android Assault - The Revenge of Bari-Arm
Batman Returns
Dark Wizard
Earthworm Jim Special Edition
Ecco the Dolphin
Eternal Champions - Challenge from the Dark Side
Final Fight CD
Heart of the Alien
Keio Flying Squadron
Lords of Thunder
Lunar - Eternal Blue
Lunar - The Silver Star
Mickey Mania - The Timeless Adventures of Mickey Mouse
Mortal Kombat
NHL '94
Night Trap
Popful Mail
Road Avenger
Robo Aleste
Secret of Monkey Island, The
Shining Force CD
Silpheed
Snatcher
Sol-Feace
Sonic CD
SoulStar
Space Ace
Terminator, The
Vay
```
### Sega - Mega Drive - Genesis (MD) - October 29, 1988
* [Mega Drive Tracker](https://md.restartmag.com/)
```
After Burner II
Aladdin
Alien Soldier
Altered Beast
Arnold Palmer Tournament Golf
Bare Knuckle III (Streets of Rage III, https://www.romhacking.net/translations/1375/)
Battletech - A Game of Armored Combat
Beyond Oasis
Captain America and The Avengers
Castlevania - Bloodlines
Comix Zone
Contra - Hard Corps (https://www.romhacking.net/hacks/797/)
Crusader of Centy
Desert Demolition Starring Road Runner and Wile E. Coyote
Desert Strike - Return to the Gulf
Dune - The Battle for Arrakis
Dynamite Headdy (https://www.romhacking.net/translations/1113/)
Earthworm Jim 2
Evander Holyfield's 'Real Deal' Boxing
Fix-It Felix Jr. (http://68000.web.fc2.com/felix/index.html)
Flashback - The Quest for Identity
Ghostbusters - Special Edition (https://www.romhacking.net/hacks/7761/)
Ghouls'n Ghosts
Golden Axe
Golden Axe II
Golden Axe III
Greatest Heavyweights
Gunstar Heroes
Herzog Zwei
Jungle Book, The
Jungle Strike
Jurassic Park - Rampage Edition
Kid Chameleon (https://www.romhacking.net/hacks/5672/)
Landstalker
Lost Vikings, The
Madden NFL 95
Marble Madness
McDonald's Treasure Land Adventure
Mega Turrican
Michael Jackson's Moonwalker
Micro Machines 2 - Turbo Tournament 
Monster World IV
MUSHA - Metallic Uniframe Super Hybrid Armor
Mutant League Football
Mutant League Hockey
NBA Live 96
NFL Sports Talk Football '93 Starring Joe Montana
NHL '94
NHL '94 - 2024 Edition (https://www.romhacking.net/hacks/8267/)
OutRun (https://www.romhacking.net/reviews/3478/)
PGA European Tour
PGA Tour Golf II
Phantasy Star II
Phantasy Star IV
Pirates! Gold
Populous
Punisher
QuackShot Starring Donald Duck
Ranger X
Revenge of Shinobi, The
Road Rash 3
Rocket Knight Adventures
Sagaia
Shadow Dancer - The Secret of Shinobi
Shadowrun
Shining Force II
Shinobi III - Return of the Ninja Master
Sonic & Knuckles + Sonic The Hedgehog 3
Sonic Spinball
Sonic The Hedgehog
Sonic The Hedgehog 2
Space Harrier II
Sparkster
Splatterhouse 3
Star Trek - The Next Generation - Echoes from the Past
Streets of Rage
Streets of Rage 2
Strider
Sub-Terrania
Super Hang-On
Super Monaco GP
Super Thunder Blade
Sword of Vermilion
Sylvester & Tweety in Cagey Capers
Teenage Mutant Ninja Turtles - Shredder's Re-Revenge (https://www.romhacking.net/hacks/7399/)
Teenage Mutant Ninja Turtles - The Hyperstone Heist
Thunder Force IV
ToeJam & Earl
ToeJam & Earl in Panic on Funkotron
Ultimate Mortal Kombat 3
Urban Strike
Vectorman
World of Illusion Starring Mickey Mouse and Donald Duck
World Series Baseball 98
X-Men
X-Men 2 - Clone Wars
```
### Sega - Saturn (SS) - November 22, 1994

* [Fan translations](https://www.reddit.com/r/SegaSaturn/comments/10i21uc/sega_saturn_fan_translation_projects/)
* [Sega Saturn Patcher](https://segaxtreme.net/resources/sega-saturn-patcher.73/)

```
Akumajou Dracula X - Gekka no Yasoukyoku (Castlevania - Symphony of the Night, https://segaxtreme.net/resources/dracula-x-symphony-of-the-night.83/)
Astal
Baku Baku Animal - World Zookeeper Contest
Batsugun
Bug!
Bulk Slash (https://segaxtreme.net/resources/bulk-slash-english.105/)
Burning Rangers
Daytona USA - Championship Circuit Edition
DecAthlete
Dragon Force
Guardian Heroes
Keio Flying Squadron 2
Legend of Oasis, The
Magical Night Dreams - Cotton 2 (https://segaxtreme.net/resources/cotton-2-english-patch.84/)
Manx TT SuperBike
Marvel Super Heroes
NiGHTS into Dreams...
Panzer Dragoon II Zwei
Panzer Dragoon Saga
Powerslave
Radiant Silvergun
Saturn Bomberman
Sega Rally Championship
Shining Force III
Shining the Holy Ark
Shippuu Mahou Daisakusen - Kingdom Grandprix (https://segaxtreme.net/resources/kingdom-grandprix-english-translation-patches.291/)
Sonic Jam
Stellar Assault SS (https://segaxtreme.net/resources/stellar-assault-ss-english.170/)
Street Fighter Alpha 2
Virtua Cop 2
Virtua Fighter 2
Virtual On - Cyber Troopers
World Series Baseball 98
X-Men - Children of the Atom
```
### Sony - PlayStation (PSX) - December 3, 1994
```
Ace Combat 3 - Electrosphere
Alundra
Ape Escape
Arcade's Greatest Hits - The Atari Collection 1
Arcade's Greatest Hits - The Atari Collection 2
Arcade's Greatest Hits - The Midway Collection 2
Armored Core
Battle Arena Toshinden
Breath of Fire III
Bust-A-Move 2 - Arcade Edition
Castlevania - Symphony of the Night
Chrono Cross
Colony Wars
Crash Bandicoot 2 - Cortex Strikes Back
CTR - Crash Team Racing
Diablo
Doom
Driver - You Are the Wheelman
Final Fantasy IX
Final Fantasy VII
Gex - Enter the Gecko
Gran Turismo 2 - Arcade Mode
Gran Turismo 2 - Simulation Mode
Grandia
Gundam Battle Assault 2
Hot Shots Golf
Klonoa - Door to Phantomile
Legend of Dragoon, The
Marvel vs. Capcom - Clash of Super Heroes
MediEvil
Mega Man Legends
Mega Man X4
Mega Man X6 (https://www.romhacking.net/hacks/4035/)
Metal Gear Solid
NBA Jam 22 (https://www.romhacking.net/hacks/5700/)
Oddworld - Abe's Exoddus
Persona
R4 - Ridge Racer Type 4
Rayman
R-Type Delta
Silent Hill
Spyro the Dragon
Suikoden II
Syphon Filter
Tekken 3
Tomb Raider
Tomba!
Twisted Metal 2
Valkyrie Profile
Vandal Hearts
Wipeout XL
X-Men - Mutant Apocalypse
Xenogears
```
### Sony - PlayStation 2 (PS2) - March 4, 2000
```
Ace Combat Zero - The Belkan War
Armored Core - Nexus
Baldur's Gate - Dark Alliance II
Bully
Burnout 3 - Takedown
Champions of Norrath
Dark Cloud 2
Def Jam - Fight for NY
Devil May Cry 3 - Dante's Awakening
Disgaea - Hour of Darkness
Disgaea 2 - Cursed Memories
Dragon Ball Z - Budokai 3
Dragon Quest VIII - Journey of the Cursed King
Enter The Matrix
Fight Night Round 3
Final Fantasy X
Final Fantasy XII
God Hand
God of War
God of War II
Gradius V
Gran Turismo 4
Grand Theft Auto III
Grand Theft Auto - Liberty City Stories
Grand Theft Auto - San Andreas
Grand Theft Auto - Vice City
Grand Theft Auto - Vice City Stories
Guilty Gear XX Accent Core Plus
GunGrave
Harvey Birdman - Attorney at Law
Hitman - Blood Money
Hot Shots Golf 3
Jak and Daxter - The Precursor Legacy
Jurassic Park - Operation Genesis
Katamari Damacy
King of Fighters '98, The - Ultimate Match
Kingdom Hearts
Klonoa 2 - Lunatea's Veil
Lara Croft Tomb Raider - Legend
Lego Star Wars II - The Original Trilogy
Lord of the Rings, The - The Two Towers
Madden NFL 08
Mana Khemia - Alchemists of Al-Revis
Manhunt 2
Marc Ecko's Getting Up - Contents Under Pressure
Marvel - Ultimate Alliance
Mega Man X8
Metal Gear Solid 3 - Snake Eater
Midnight Club 3 - DUB Edition
MLB 11
Mobile Suit Gundam - Zeonic Front
Monster Hunter
NBA 2K12
NBA Street Vol. 2
Need for Speed - Carbon - Collector's Edition
NHL 07
Nickelodeon SpongeBob SquarePants - Battle for Bikini Bottom
Odin Sphere
Ōkami
Oni
OutRun 2006 - Coast 2 Coast
PaRappa the Rapper 2
PES 2014 - Pro Evolution Soccer
Prince of Persia - The Sands of Time
Psychonauts
Punisher, The
Ratchet & Clank - Up Your Arsenal!
Rogue Galaxy
R-Type Final
Sega Ages 2500 Series Vol. 30 - Galaxy Force II - Special Extended Edition
Shadow of the Colossus
Shin Megami Tensei - Persona 4
Silent Hill Origins
Simpsons, The - Hit & Run
SkyGunner
Sly Cooper and the Thievius Raccoonus
Sonic Unleashed
Soulcalibur II
Spider-Man 2
SSX 3
Star Wars - Battlefront II
Star Wars - The Force Unleashed
Syphon Filter - Dark Mirror
Tekken 5
Thunder Force VI
TimeSplitters 2
Tony Hawk's Pro Skater 4
Tony Hawk's Underground
Twisted Metal - Black
Virtua Fighter 4 - Evolution
Warriors, The
Way of the Samurai 2
Worms 4 - Mayhem
X-Men Legends
XIII
Yakuza
```
### Sony - PlayStation Portable (PSP) - December 11, 2004
```
Asterix & Obelix XXL 2
Castlevania - The Dracula X Chronicles
Crimson Gem Saga
Crisis Core - Final Fantasy VII
Daxter
Echochrome
Fat Princess - Fistful of Cake
Final Fantasy Tactics - The War of the Lions
God of War - Chains of Olympus
God of War - Ghost of Sparta
Half-Minute Hero
Jeanne d'Arc
Legend of Heroes, The - Trails in the Sky
LocoRoco 2
Lumines II
Lunar - Silver Star Harmony
Mega Man - Powered Up
Metal Gear Ac!d
Metal Gear Solid - Peace Walker
N Plus
PaRappa the Rapper
Patapon 2
Peggle
Phantasy Star Portable 2 Infinity (https://gbatemp.net/threads/phantasy-star-portable-2-infinity-english-localization-v2-update-released-august-2022.576943/)
PixelJunk Monsters Deluxe
Ratchet & Clank - Size Matters
Resistance - Retribution
Rock Band Unplugged
Shin Megami Tensei - Persona
Shin Megami Tensei - Persona 2 - Innocent Sin
Shin Megami Tensei - Persona 3 Portable
Sid Meier's Pirates!
Silent Hill Origins
Space Invaders Extreme
Star Ocean - Second Evolution
Tekken 6
Ultimate Ghosts'n Goblins
Valkyria Chronicles II
Virtua Tennis 3
Warhammer 40,000 - Squad Command
WipEout Pulse
Ys Seven
Ys - The Oath in Felghana
```
### The 3DO Company - 3DO - October 4, 1993
```
Alone in the Dark 2
BrainDead 13
Captain Quazar
Crash 'n Burn
Dragon's Lair
FIFA International Soccer
Gex
Guardian War
Lucienne's Quest
Out of This World
Return Fire
Road & Track Presents - The Need for Speed
Road Rash
Samurai Shodown
Slayer
Space Hulk - Vengeance of the Blood Angels
Star Control II
Star Fighter
Starblade
Super Street Fighter II Turbo
Super Wing Commander
Total Eclipse
Twisted - The Game Show
Wing Commander III - Heart of the Tiger
Wolfenstein 3D
```

## PC Games

### Engine (re-)implementations

* [devilutionX](https://github.com/diasurgical/devilutionX) - Diablo 1
* [eduke32](https://www.eduke32.com/) - Duke Nukem
* [openblack](https://github.com/openblack/openblack) - Black & White
* [OpenJKDF2](https://github.com/shinyquagsire23/OpenJKDF2/) - Dark Forces II: Jedi Knight
* [OpenMW](https://openmw.org/) - The Elder Scrolls III: Morrowind
* [OpenRA](https://github.com/OpenRA/OpenRA) - Command & Conquer: Red Alert
* [OpenTDD](https://www.openttd.org/) - Transport Tycoon Deluxe
* [VCMI](https://vcmi.eu/) - Heroes of Might and Magic III

### Port for Linux-based handhelds

[PortMaster](http://portmaster.games/games.html) for Anbernic and Powkiddy devices

* [2048](http://portmaster.games/detail.html?name=2048)
* [Aleph-One Marathon 1](http://portmaster.games/detail.html?name=alephone-marathon)
* [Cave Story (Evo)](https://portmaster.games/detail.html?name=cave.story-evo)
* [Celeste Classic](http://portmaster.games/detail.html?name=spelunky)
* [Chasm](http://portmaster.games/detail.html?name=chasm)*
* [Descent III](https://portmaster.games/detail.html?name=descent3)*
* [Downwell](http://portmaster.games/detail.html?name=downwell)*
* [Duke Nukem 3D](http://portmaster.games/detail.html?name=duke.nukem.3d)*
* [Echo Chamber](http://portmaster.games/detail.html?name=echo_chamber) - Doesn't work on muOS: Runs, but controls (other than "select") don't work
* [Fallout 1](http://portmaster.games/detail.html?name=fallout1)*
* [Fallout 2](http://portmaster.games/detail.html?name=fallout2)*
* [Gravity Circuit](http://portmaster.games/detail.html?name=gravitycircuit)*
* [Half-Life](http://portmaster.games/detail.html?name=half-life)*
* [Maldita Castilla](http://portmaster.games/detail.html?name=maldita.castilla)
* [Minetest](http://portmaster.games/detail.html?name=minetest) (aka Luanti) - Requires more than 1GB of RAM for single player
* [OpenRCT2](http://portmaster.games/detail.html?name=openrct2)*
* [Pokemon Reborn](https://portmaster.games/detail.html?name=reborn)*
* [Quake 1](https://portmaster.games/detail.html?name=quake)*
* [Quake 2](https://portmaster.games/detail.html?name=quake.2)*
* [Quake 3](https://portmaster.games/detail.html?name=quake3)*
* [RAWGL](http://portmaster.games/detail.html?name=rawgl)
* [Shovel Knight Treasure Trove](http://portmaster.games/detail.html?name=shovel.knight)*
* [Sonic Mania](https://portmaster.games/detail.html?name=sonic.mania)*
* [Sonic Robo Blast 2 (SRB2)](http://portmaster.games/detail.html?name=srb2)
* [Space Cadet Pinball](http://portmaster.games/detail.html?name=space.cadet.pinball)*
* [Spelunky](http://portmaster.games/detail.html?name=spelunky)
* [Stardew Valley](http://portmaster.games/detail.html?name=stardewvalley)*
* [Star Wars Jedi Knight II - Jedi Outcast](https://portmaster.games/detail.html?name=jedioutcast)
* [TMNT: Shredder's Revenge](http://portmaster.games/detail.html?name=tmntsr)*
* [Timespinner](http://portmaster.games/detail.html?name=timespinner)*
* [Ur-Quan Masters (UQM)](http://portmaster.games/detail.html?name=uqm)
* [VCMI - Heroes of Might and Magic III](http://portmaster.games/detail.html?name=vcmi)*

(`*` indicates that the port requires additional files to be installed)

#### Running steam console in Flatpak (used to download some PortMaster port files)

* [StackExchange](https://gaming.stackexchange.com/a/402182)

```
flatpak run com.valvesoftware.Steam "steam://open/console"
```
