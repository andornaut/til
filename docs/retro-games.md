# Retro games

* [Ansible role](https://github.com/andornaut/ansible-ctrl/tree/main/roles/games)
* Artwork
  * [System images (larger)](https://github.com/ruckage/es-theme-snes-mini/blob/master/art/icons_usa/)
  * [System images (smaller)](https://github.com/Vidnez/retro-systems-icons-for-GarlicOS/tree/master/system) 
  * [Thumbnails](http://thumbnails.libretro.com/)
* [Backup & Restore Android Retro Handhelds! (Video)](https://www.youtube.com/watch?app=desktop&v=EZhlyGXCSF0)
* [BIOS (GitHub)](https://github.com/Abdess/retroarch_system)
* [BIOS (Megathread)](https://r-roms.github.io/megathread/misc/#bios-files)
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
* [Romheaven](https://romheaven.com/roms)
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

#### RetroArch on stock Android

Category | Path
--- | ---
retroarch.cfg | `/storage/emulated/0/Android/data/com.retroarch.aarch64/files/retroarch.cfg` (or `/storage/emulated/0/RetroArch/` if RetroArch is granted all-files access)
Per-core overrides | `<config dir>/config/<library_name>/<library_name>.cfg` and `.opt`
Cores | in-app Core Updater, or the Android buildbot: `https://buildbot.libretro.com/nightly/android/latest/arm64-v8a/<core>_libretro_android.so.zip` (ABI `arm64-v8a` for the Snapdragon 865, not the kernel `aarch64` the desktop uses)
Core `.info` set | `https://buildbot.libretro.com/assets/frontend/info.zip`

The saves, states, playlists, thumbnails, and system (BIOS) directories are all relocatable to the
removable sdcard via Settings>Directory; the folder layout above puts them under `RETROARCH/`. Cores
are the exception: the sdcard and emulated storage are mounted `noexec`, so RetroArch cannot `dlopen`
a core `.so` from either the sdcard or the app files dir. Only the app-private dir
(`/data/user/0/com.retroarch.aarch64/cores`) is exec-capable, and it is where the in-app Core Updater
installs, so leave `libretro_directory` at that default and install cores through Online Updater > Core
Downloader.

#### Sync the desktop config to the Flip 2

The [games role](https://github.com/andornaut/ansible-ctrl/tree/main/roles/games)'s
[files/retroid/](https://github.com/andornaut/ansible-ctrl/tree/main/roles/games/files/retroid)
mirrors the same managed RetroArch config (settings, per-core overrides/options, generated playlists,
cores, BIOS, thumbnails) onto the Flip 2 over `adb`, applying the Android divergences from the
[Cores](#cores) table (ARM cores, GLideN64 HLE for N64, YabaSanshiro for Saturn, standalone Dolphin
and NetherSX2 for GameCube and PS2). Run it by hand from a host that mounts the ROM library:

```bash
roles/games/files/retroid/sync.py --library-dir /path/to/rom-library --dry-run   # preview
roles/games/files/retroid/sync.py --library-dir /path/to/rom-library             # sync
```

Close RetroArch on the device first (it rewrites `retroarch.cfg` on exit). Two device-specific values
have to be filled in once (the core `library_name`s and the pad's physical rewind/fast-forward
indices); the tooling's `README.md` gives the `adb` commands that read them.

#### Standalone emulator settings (stock Android)

GameCube and PS2 run in standalone apps, launched from ES-DE, not as libretro playlist entries.

##### GameCube: Dolphin

Config is plain `.ini` in accessible storage (`adb`-writable), under
`/storage/emulated/0/Android/data/org.dolphinemu.dolphinemu/files/Config/` (`Dolphin.ini`, `GFX.ini`).

Setting | Value
--- | ---
Graphics backend | Vulkan (Adreno 650)
Internal resolution | 2x (1280x1056); 3x is crisper but a few demanding titles dip (Rogue Leader, F-Zero GX)
Backend multithreading | on
Wait for shaders before starting | on (avoids first-run stutter)
Color correction | on
ISO path | sdcard `ROMS/gc`, recursive

##### PS2: NetherSX2-Turnip

Package `xyz.aethersx2.tturnip`, the `NetherSX2-…-Turnip` build (4248 "patch") from the
[Obtainium Emulation Pack](https://github.com/RJNY/Obtainium-Emulation-Pack), for its bundled Turnip
Adreno driver. The "Classic" (3668) build is the same package with the older AetherSX2 UI (some titles
favour one, e.g. Sly Cooper on 3668); they share the package id, so swapping keeps the data.

Settings live in app-private storage, so set them by hand (`adb` cannot reach them on a non-rooted
device): renderer Vulkan, and the Turnip driver. The built-in gamepad auto-maps undocked; remap only if
the D-pad, sticks, or analog triggers misbehave. Put the PS2 BIOS (the 4MB `SCPH-*` / `ps2-0200*` dumps,
not the 512KB PS1 `scph*` ones) in the app's `bios/` folder,
`/storage/emulated/0/Android/data/xyz.aethersx2.tturnip/files/bios/`.

ES-DE launches it via the `AetherSX2-Turnip (Standalone)` label, whose find rule
(`ES-DE/custom_systems/es_find_rules.xml`) ships pointing at a different fork (`xyz.aethersx2.custom`):
repoint it to `xyz.aethersx2.tturnip/xyz.aethersx2.android.EmulationActivity` and set the PS2
`<alternativeEmulator>` to that label. `sync.py` manages neither file, so re-copying the
[custom-systems](https://github.com/GlazedBelmont/es-de-android-custom-systems) reverts both.

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
* [RGC: RetroArch Starter Guide](https://retrogamecorps.com/2022/02/28/retroarch-starter-guide/)
* [RGC: Shaders and Overlays on Retro Handhelds](https://retrogamecorps.com/2024/09/01/guide-shaders-and-overlays-on-retro-handhelds/)
  * [RGC Overlay Pack](https://github.com/retrogamecorps/RGC-Overlay-Pack/releases)
* [/r/RetroArch](https://www.reddit.com/r/RetroArch/)

### Ansible

On the desktops, RetroArch is managed by the `retroarch` tag of the
[games role](https://github.com/andornaut/ansible-ctrl/tree/main/roles/games): the libretro cores, the
BIOS set, a curated subset of `retroarch.cfg`'s keys, the per-core overrides and core options, and the
playlists. Everything below that describes a setting is enforced there rather than clicked through the UI.
The role owns only the keys it names, so a setting changed in the app still persists; the managed ones snap
back on the next run.

```bash
ansible-playbook --ask-become-pass games.yml --tags retroarch
```

The same managed config can be mirrored onto the Retroid Pocket Flip 2 over `adb`; see
[Sync the desktop config to the Flip 2](#sync-the-desktop-config-to-the-flip-2).

**Close RetroArch first.** It rewrites the whole of `retroarch.cfg` when it exits
(`config_save_on_exit`), so a running instance overwrites whatever the play just enforced.

**Playlists are generated from the ROM library, not scanned.** RetroArch's in-app content scanner needs
a display and has to be driven by hand on every host, and the resulting core association only ever lives
inside each scanned `.lpl`. The role walks the library instead and writes each playlist from a
directory-to-core table (`games_retroarch_systems`), so adding a ROM means re-running the tag. The core
association is therefore the Desktop column of the table below, in one reviewable place.

RetroArch only reads the library, and writes everything (playlists, saves, states, `system/`, cache)
under `~/.var/app/org.libretro.RetroArch/config/retroarch`, so a host can mount the library read-only.

**Cores come from the buildbot, not the in-app Core Updater.** Libretro cores are packaged for neither apt
nor flatpak, and the in-app updater is one manual download per core per host. They are the same artifacts:
`https://buildbot.libretro.com/nightly/linux/<arch>/latest/<core>_libretro.so.zip`, where `<arch>` is the
*kernel* name (`x86_64`, `aarch64`), not the Debian one. The buildbot rebuilds every core nightly, so pull a
core once and leave it: re-downloading on a schedule swaps a working core for an untested nightly. Delete a
core's `.so` to force a fresh build.

**The BIOS set has to be local.** Cores treat the system directory as writable scratch space (Dolphin keeps
its `Sys` tree there, PPSSPP its own state), so it cannot be an alias for a read-only network mount: copy
the BIOS in, rather than pointing `system_directory` at the library. Copy it with `rsync`, which compares
size and mtime; a checksumming copy reads the whole ~600MB set back across the network on every run. Do not
`--delete` on that copy, or it takes the cores' own state with it.

### Multi-disc games

How a multi-disc game is laid out on disk is decided by one thing: whether the system's RetroArch
core reads an `.m3u` playlist to swap discs. A core that does gets a hidden folder plus a
one-line-per-disc `.m3u`, so only the `.m3u` shows in the playlist and the swap is automatic. A core
that does not gets a visible folder and no `.m3u`, because a hidden folder would leave nothing to
launch. Every disc of a game uses the same container format (all `.chd`, or all `.rvz` on GameCube);
never mix formats within one game.

System | Core | Multi-disc layout
--- | --- | ---
Sony - PlayStation | Beetle PSX HW | hidden `.Game/` dir + `.m3u`, `.chd`
Sony - PlayStation 2 | LRPS2 | hidden `.Game/` dir + `.m3u`, `.chd`
Sega - Saturn | Beetle Saturn | hidden `.Game/` dir + `.m3u`, `.chd`
Sega - Dreamcast | Flycast | hidden `.Game/` dir + `.m3u`, `.chd`
Sega - Mega-CD - Sega CD | Genesis Plus GX | hidden `.Game/` dir + `.m3u`, `.chd`
NEC - PC Engine CD - TurboGrafx-CD | Beetle PCE | hidden `.Game/` dir + `.m3u`, `.chd`
The 3DO Company - 3DO | Opera | visible `Game/` dir, no `.m3u`, `.chd`
Nintendo - GameCube | Dolphin | visible `Game/` dir, no `.m3u`, `.rvz`
Sony - PlayStation Portable | PPSSPP | single-UMD, no multi-disc
Cartridge systems | (various) | single file, no multi-disc

The `.m3u` lists each disc with a path relative to itself, pointing into the hidden `.Game/`
subdirectory; the library's `games/AGENTS.md` has the exact naming.

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
Atari - 2600 | [Stella](https://docs.libretro.com/library/stella/) | | |
Atari - 7800 | [ProSystem](https://docs.libretro.com/library/prosystem/) | [ProSystem](https://docs.libretro.com/library/prosystem/) | [ProSystem](https://docs.libretro.com/library/prosystem/) | [ProSystem](https://docs.libretro.com/library/prosystem/)
Atari - Jaguar | [Virtual Jaguar](https://docs.libretro.com/library/virtual_jaguar/) | [Virtual Jaguar](https://docs.libretro.com/library/virtual_jaguar/) | [Virtual Jaguar](https://docs.libretro.com/library/virtual_jaguar/) | [Virtual Jaguar](https://docs.libretro.com/library/virtual_jaguar/)
Atari - Lynx | [Beetle Lynx](https://docs.libretro.com/library/beetle_lynx/) | [Handy](https://docs.libretro.com/library/handy/) | [Handy](https://docs.libretro.com/library/handy/) | [Beetle Lynx](https://docs.libretro.com/library/beetle_lynx/)
NEC - PC Engine - TurboGrafx 16 (PCE) | [Beetle PCE](https://docs.libretro.com/library/beetle_pce/) | [Beetle PCE FAST](https://docs.libretro.com/library/beetle_pce_fast/) | [Beetle PCE FAST](https://docs.libretro.com/library/beetle_pce_fast/) | [Beetle PCE](https://docs.libretro.com/library/beetle_pce/)
NEC - PC Engine CD - TurboGrafx-CD (PCECD) | [Beetle PCE](https://docs.libretro.com/library/beetle_pce/) | [Beetle PCE FAST](https://docs.libretro.com/library/beetle_pce_fast/) | [Beetle PCE FAST](https://docs.libretro.com/library/beetle_pce_fast/) | [Beetle PCE](https://docs.libretro.com/library/beetle_pce/)
Nintendo - Game Boy (GB) | [Gambatte](https://docs.libretro.com/library/gambatte/) | [Gambatte](https://docs.libretro.com/library/gambatte/)  | [Gambatte](https://docs.libretro.com/library/gambatte/) | [Gambatte](https://docs.libretro.com/library/gambatte/)
Nintendo - Game Boy Advance (GBA) | [mGBA](https://docs.libretro.com/library/mgba/) | [mGBA](https://docs.libretro.com/library/mgba/) | [mGBA](https://docs.libretro.com/library/mgba/) | [mGBA](https://docs.libretro.com/library/mgba/)
Nintendo - Game Boy Color (GBC) | [Gambatte](https://docs.libretro.com/library/gambatte/) | [Gambatte](https://docs.libretro.com/library/gambatte/) | [Gambatte](https://docs.libretro.com/library/gambatte/) | [Gambatte](https://docs.libretro.com/library/gambatte/)
Nintendo - GameCube (GCN) | [Dolphin](https://docs.libretro.com/library/dolphin/) | -- | [Dolphin](https://docs.libretro.com/library/dolphin/) | [Dolphin](https://dolphin-emu.org/) (Standalone: the libretro core crashes on load on Android)
Nintendo - Nintendo 64 (N64) | [Mupen64Plus-Next](https://docs.libretro.com/library/mupen64plus/) + [ParaLLEl-RDP/RSP](https://github.com/Themaister/parallel-rdp) (Vulkan) | [Mupen64Plus-Next](https://docs.libretro.com/library/mupen64plus/) | [Mupen64Plus-Next](https://docs.libretro.com/library/mupen64plus/) | [Mupen64Plus-Next](https://docs.libretro.com/library/mupen64plus/) + GLideN64 (HLE)
Nintendo - Nintendo DS (NDS) | [melonDS DS](https://docs.libretro.com/library/melonds_ds/) | [DraStic](https://drastic-ds.com) (Standalone) | [DraStic](https://drastic-ds.com) (Standalone) | [melonDS DS](https://docs.libretro.com/library/melonds_ds/)
Nintendo - Nintendo Entertainment System (FC, NES) | [Mesen](https://docs.libretro.com/library/mesen/) | [FCEUmm](https://docs.libretro.com/library/fceumm/) | [Nestopia](https://docs.libretro.com/library/nestopia/) | [Mesen](https://docs.libretro.com/library/mesen/)
Nintendo - Super Nintendo Entertainment System (SFC, SNES) | [Snes9x](https://docs.libretro.com/library/snes9x/) | [Snes9x](https://docs.libretro.com/library/snes9x/) | [Snes9x](https://docs.libretro.com/library/snes9x/) | [Snes9x](https://docs.libretro.com/library/snes9x/)
Pico-8 | [Retro8](https://github.com/Jakz/retro8) | | |
Sega - 32X | [PicoDrive](https://docs.libretro.com/library/picodrive/) | [PicoDrive](https://docs.libretro.com/library/picodrive/) | [PicoDrive](https://docs.libretro.com/library/picodrive/) | [PicoDrive](https://docs.libretro.com/library/picodrive/)
Sega - Dreamcast (DC) | [Flycast](https://docs.libretro.com/library/flycast/) | [Flycast VL](https://docs.libretro.com/library/flycast/) | [Flycast](https://docs.libretro.com/library/flycast/) | [Flycast](https://docs.libretro.com/library/flycast/)
Sega - Game Gear (GG) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/)
Sega - Master System - Mark III (MS) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/)
Sega - Mega-CD - Sega CD | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/)
Sega - Mega Drive - Genesis (MD) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/)
Sega - Saturn (SS) | [Beetle Saturn](https://docs.libretro.com/library/beetle_saturn/) | [YabaSanshiro](https://docs.libretro.com/library/yabasanshiro/) | [YabaSanshiro](https://docs.libretro.com/library/yabasanshiro/) (Standalone) | [YabaSanshiro](https://docs.libretro.com/library/yabasanshiro/)
SNK Neo Geo | | | | [FinalBurn Neo](https://docs.libretro.com/library/fbneo/)
Sony - PlayStation (PSX) | [Beetle PSX HW](https://docs.libretro.com/library/beetle_psx_hw/) ([Beetle PSX](https://docs.libretro.com/library/beetle_psx/) on Xbox Series) | [PCSX ReARMed](https://docs.libretro.com/library/pcsx_rearmed/) | [PCSX ReARMed](https://docs.libretro.com/library/pcsx_rearmed/) | [Beetle PSX HW](https://docs.libretro.com/library/beetle_psx_hw/)
Sony - PlayStation 2 (PS2) | [PCSX2](https://docs.libretro.com/library/pcsx2/) | -- | AetherSX2 | [NetherSX2-Turnip](https://github.com/nckstwrt/NetherSX2-Turnip) (Standalone)
Sony - PlayStation Portable (PSP) | [PPSSPP](https://docs.libretro.com/library/ppsspp/) | [PPSSPP](https://docs.libretro.com/library/ppsspp/) ([Core System Files](https://github.com/hrydgard/ppsspp), [Optimization](https://www.reddit.com/r/ANBERNIC/comments/1fkztb1/universal_pppsspp_configuration_for_unmatched/)) | [PPSSPP](https://docs.libretro.com/library/ppsspp/) | [PPSSPP](https://docs.libretro.com/library/ppsspp/)
The 3DO Company - 3DO | [Opera](https://docs.libretro.com/library/opera/) | [Opera](https://docs.libretro.com/library/opera/) | [Opera](https://docs.libretro.com/library/opera/) | [Opera](https://docs.libretro.com/library/opera/)

#### Desktop vs. Flip 2: why they differ where they do

The desktop column is accuracy-first: the hardware can afford a cycle-accurate core, so it runs one. The Flip 2
is a **Snapdragon 865** (2020 flagship, ~55% of an 8 Gen 2's single-core score, and single-core is what every one
of these cores is bound by), so it cannot, and three rows diverge. Everywhere else the accuracy core is free and
both run the same one.

Platform | Diverges because
--- | ---
Saturn | Beetle Saturn has **no dynamic recompiler**: it interprets both SH-2s. A Snapdragon 855+ cannot hold full speed on it. Not a close call.
N64 | ParaLLEl-RDP is a Vulkan compute renderer needing `VK_KHR_8bit_storage`, which **no Adreno driver exposes**. Reported at ~1fps even on a Snapdragon 8 Elite. A hard blocker, not a performance question: the Flip 2 stays on GLideN64 HLE.
PS2 | LRPS2 is x86_64-only; its recompiler has no ARM target and no Android build exists. Use NetherSX2-Turnip standalone.

Two shared rows come with conditions rather than a clean yes. **Beetle PSX HW** runs on the Flip 2 but is a pure
interpreter with no dynarec, so it costs battery: keep internal resolution at 2-3x (an 845 collapsed at 4x) and
run-ahead off, and set the core's renderer to `hardware_vk` explicitly or it silently falls back to software at
1x. **Mesen** should be fine on an 865 in absolute terms, but libretro's own core info warns it off weak mobile
hardware: check the FPS overlay, and avoid the Bisqwit NTSC filters, which are what actually blow its budget.
Both are worth testing for 10+ minutes, not 60 seconds: the marginal cores pass a short test and fail once the
thermal budget engages.

GameCube is listed as standalone Dolphin on the Flip 2 because the libretro Dolphin core crashes on load on
Android. The libretro core remains usable on the desktop, but standalone Dolphin is ahead of it there too.

**SNES is the one row that goes the other way**: rather than let the desktop take a more accurate core than the
handheld can run, both stay on Snes9x. A bsnes-family core is the more accurate line, but it schedules the SA-1
and SuperFX coprocessors cycle-accurately against the 65816, roughly doubling cost, and that is unverified on an
865 (the failure mode is audio crackle in exactly the games worth being accurate about: Super Mario RPG, Yoshi's
Island). Modern Snes9x is far more accurate than its reputation: the gap is timing edge cases rather than visible
behaviour, and it keeps rewind and MSU-1, which bsnes does not do. One core everywhere is worth more than that
trade.

#### System specific cores

* [ScummVM](https://docs.libretro.com/library/scummvm/)

#### Pico-8

RetroArch cannot run the official (paid) PICO-8 binary: libretro cores are shared libraries
implementing the libretro API, and PICO-8 is a closed-source standalone executable. Retro8 is a
reimplementation, so compatibility is worse than the real runtime and there is no Splore. Prefer the
standalone binary if you own it. On linux/x86_64 the libretro buildbot ships Retro8 but not Fake-08.

Cartridges are `.p8.png`: the game is steganographed into a picture of its own label. RetroArch's
built-in image viewer claims every `.png` **ahead of the core the playlist asks for**, so a cartridge
launches as a static picture of that label instead of the game. Symptoms: the core loads at the PNG's
dimensions (160x205) rather than PICO-8's 128x128, and saves land under `saves/image display/`. Fix:

```
# ~/.var/app/org.libretro.RetroArch/config/retroarch/retroarch.cfg
builtin_imageviewer_enable = "false"
```

#### Zipped ROMs and `block_extract`

Most cores never see the archive: RetroArch unpacks a `.zip` and hands over what is inside, which is
why cores that do not list `zip` among their extensions still play zipped ROMs. A core that sets
**`block_extract`** is the exception, and is handed the archive untouched. Dolphin is the only one of
these in this collection, and it cannot open a zip: a zipped GameCube ROM does not fail politely, it
segfaults RetroArch (`Failed to load content`). Keep GameCube content as `.iso`/`.rvz`.

`block_extract` is not in the core's `.info` file. Read it, and the core's real `library_name`, out of
the `.so`:

```python
import ctypes
class Info(ctypes.Structure):
    _fields_ = [("library_name", ctypes.c_char_p), ("library_version", ctypes.c_char_p),
                ("valid_extensions", ctypes.c_char_p), ("need_fullpath", ctypes.c_bool),
                ("block_extract", ctypes.c_bool)]
core = ctypes.CDLL("<cores_dir>/dolphin_libretro.so")
info = Info(); core.retro_get_system_info(ctypes.byref(info))
print(info.library_name.decode(), info.valid_extensions.decode(), info.block_extract)
```

Note that `valid_extensions` from the `.so` is narrower than the `supported_extensions` in the `.info`,
and it is the `.info` that RetroArch goes by. Virtual Jaguar reports only `j64|jag` yet plays this
library's `.rom` files perfectly well: content given as an explicit path is not filtered on extension.

#### Cores rot when the runtime moves

A core downloaded from the buildbot is a binary linked against the flatpak runtime. Upgrade the runtime
and a core can stop resolving its libraries: a 2024 Dolphin failed with `libbz2.so.1.0: cannot open
shared object file`, killing every GameCube title, with no symptom other than "Failed to open libretro
core". Re-downloading the core fixes it. Check from **inside the sandbox**, because the missing library
is missing from the runtime, not the host, and `ldd` on the host will call the core healthy:

```bash
flatpak run --command=ldd org.libretro.RetroArch <core>.so | grep 'not found'
```

### Drivers

Type | Linux driver (flatpak)
--- | ---
Video | glcore (per-core `vulkan`: Beetle PSX HW, Flycast, Mupen64Plus-Next)
Audio | pipewire
Microphone | pipewire
Input | udev
Controller | udev
Menu | ozone
Record | ffmpeg
MIDI | alsa
Camera | video4linux2
Location | null

The input driver used to be `x`, which only works under an X11 video context and so breaks on a
Wayland session. `udev` reads `/dev/input` directly and works under both, and it serves the keyboard,
the mouse and the lightgun bindings. Confirm with `retroarch -v`, which logs
`[Input] Found input driver: "udev".`

The audio driver used to be `pulse`. RetroArch has had a native PipeWire driver since 1.20, and its own
description of it is "if the system uses PipeWire, make sure to use this driver instead of, e.g., PulseAudio":
`pulse` reaches the same server through the `pipewire-pulse` shim, which is a buffer and a hop that buy nothing.
The driver is much younger than the pulse one, so `pulse` is the fallback if it ever xruns.

#### Why the global video driver stays glcore

Switching the global driver to `vulkan` looks like the obvious upgrade on a modern GPU and is not. A core asks
the frontend for its preferred renderer and matches it, so a `vulkan` global silently moves **PPSSPP and Dolphin**
onto their Vulkan backends too, which is where their libretro bug reports live (PPSSPP's loses the device on
fast-forward). That needs overrides back to `glcore` for more cores than going the other way needs overrides
forward. slang shaders work on `glcore` and `vulkan` alike, so nothing is lost by staying.

The three cores that do want Vulkan get it per-core, which `driver_switch_enable = "true"` permits:

Core | Why vulkan
--- | ---
Beetle PSX HW | Its OpenGL renderer leaves "all games" with "graphical glitches and rendering issues of varying severity" per the libretro docs; the Vulkan one is the stable path and is closer to the software renderer's accuracy.
Flycast | Better frame pacing and much faster texture/framebuffer uploads.
Mupen64Plus-Next | ParaLLEl-RDP is Vulkan-only (it needs `VK_EXT_external_memory_host`) and there will never be an OpenGL port.

#### Core options are a different file

`config/<library_name>/<library_name>.cfg` holds RetroArch settings overridden for that core.
`config/<library_name>/<library_name>.opt` holds the **core's own** options, which are namespaced by the core and
are not discoverable from `retroarch.cfg`. Read the real keys out of the `.so`, because the libretro docs lag the
cores:

```bash
strings <cores_dir>/genesis_plus_gx_libretro.so | grep '^genesis_plus_gx_'
```

RetroArch writes *every* option a core exposes into the `.opt` file, so it cannot be templated whole the way a
`.cfg` override can: enforce it key by key or the untouched options get discarded.

Core | Option | Value | Why
--- | --- | --- | ---
Genesis Plus GX | `genesis_plus_gx_ym2612` | `nuked (ym2612)` | The default MAME FM synthesis is fast and approximate; Nuked is cycle-accurate, and is why a Mega Drive sounds like the hardware rather than like an emulator.
Genesis Plus GX | `genesis_plus_gx_ym2413_core` | `nuked` | Same, for the Master System's FM add-on, which is a separate chip and so a separate option.
Mupen64Plus-Next | `mupen64plus-rdp-plugin` | `parallel` | Low-level emulation of the real RDP, where the default GLideN64 is a high-level reimplementation that guesses at what each game meant. This is what renders the framebuffer effects (Zelda's lens of truth, Mario's paintings) correctly rather than approximately.
Mupen64Plus-Next | `mupen64plus-rsp-plugin` | `parallel` | The matching RSP.

The core only requests a Vulkan context when its `rdp-plugin` option is `parallel`, so the core option and the
`video_driver` override have to be set together or ParaLLEl-RDP silently does not engage.

### Lightgun and menu pointer

The menu pointer (`menu_mouse_enable`, off by default) and the lightgun
(`input_player1_gun_trigger_mbtn = "1"`, offscreen shot on `2`) both read the mouse through the `udev` input
driver, so they need the `/dev/input` access the pad already has. The distro's `70-uaccess.rules` tags
joysticks but not the mouse or keyboard, so out of the box the pad works while the pointer and lightgun are
dead; a `70-retroarch-input.rules` tagging them too fixes it. (`menu_unified_controls` stays off, so the menu
keeps its own arrows/Enter/Backspace.)

**`input_player1_mouse_index` picks the mouse by position, not name.** An idle KVM / virtual-HID that
advertises buttons but emits nothing takes a slot in the enumeration-order list; if it sorts to index 0 (the
default), the cursor still moves (motion is summed across mice) but every click lands on the dead device.
Pinning the index does not help, the order being unstable across launches: drop that device's `ID_INPUT_MOUSE`
in the same udev rule so a real mouse holds index 0.

### Savestates

```
# ~/.var/app/org.libretro.RetroArch/config/retroarch/retroarch.cfg
savestate_auto_index = "true"
savestate_max_keep = "100"
```

RetroArch defaults to one save slot that each save overwrites; auto-index takes the next slot and keeps the
last 100, so a misfire cannot clobber an earlier save. Saves and states sort into per-core dirs
(`saves/<library_name>/`, `states/<library_name>/`), so a core swap orphans them: states never migrate (a
dump of the old core's internal state), and battery saves move only within an emulator family (Mednafen's
`.srm` between its cores, but DeSmuME's `.dsv` is not a melonDS `.sav`).

### Rewind

From [Retro Game Corps](https://retrogamecorps.com/2022/02/28/retroarch-starter-guide/):

> For the Rewind function to work, you will need to go into Settings > Frame Throttle > Rewind > ON. **This is not something I would recommend turning on as a global configuration**, because some systems (like Saturn or PS1) will be very slow with it on, and some (like PSP) may outright crash.

That advice is written for a handheld. On a desktop, rewind is worth having on globally, and the cost the guide is
warning about is mostly `rewind_buffer_size` (see below), which is a setting rather than a limit.

#### Bind it three ways

The right stick is the nicest binding, but it is not available on the dual-analog consoles (PlayStation, GameCube,
PS2), where it is the camera or C-stick: left bound to fast-forward, looking right runs the game at 3x. So bind an
alternative as well.

**`input_*_btn` and `input_*_axis` are physical device indices, not RetroPad IDs.** This is the trap. The physical
indices differ per controller model, so there is no value that is correct everywhere: on an Xbox Series X pad the
right stick's Y axis is 4 and L3/R3 are 9/10, on an Xbox One BT the axis is 3, and on an 8BitDo Ultimate the
buttons are 13/14. Guessing does not produce a near-miss, it produces a *different button*: the RetroPad IDs
(`2` for the stick, `14`/`15` for L3/R3) mean axis 2 on an Xbox pad, which is the **left trigger**, so pulling L2
fast-forwards the game, and two buttons that do not exist.

Read the real numbers out of RetroArch's own autoconfig profile for the pad, which is the authority the frontend
itself uses:

```bash
flatpak run --command=grep org.libretro.RetroArch -E '^input_(r_y_minus_axis|r_y_plus_axis|l3_btn|r3_btn)' \
  "/app/share/libretro/autoconfig/udev/Microsoft_X-Box_Series_XS_pad.cfg"
```

```
# ~/.var/app/org.libretro.RetroArch/config/retroarch/retroarch.cfg
# Xbox Series X. Check the autoconfig profile above for any other pad.
input_rewind_axis = "-4"             # right stick up
input_hold_fast_forward_axis = "+4"  # right stick down
input_rewind_btn = "9"               # L3
input_hold_fast_forward_btn = "10"   # R3
input_rewind = "r"                   # keyboard: the one binding no core takes away
input_hold_fast_forward = "l"
```

No console here has clickable sticks, so L3/R3 are free on all of them except the PS2, whose games do use them.

Do **not** reach for a Hotkey-Enable combo (Select+L and the like) to solve this: `input_enable_hotkey_btn` gates
*every* hotkey, so binding it means holding Select to use the right stick too.

#### Rewind buffer size

This, not the CPU, is what decides how far back you can go. The ring buffer holds deltas between consecutive
savestates, so a core with a big state fills it quickly. RetroArch's default is 20MB, sized for a handheld; on a
desktop there is no reason not to buy the window:

```
rewind_buffer_size = "268435456"   # 256MB
rewind_granularity = "1"
```

#### Only enable rewind for certain cores

"Rewind" functionality is not supported by all cores, and may cause problems with some cores that nominally support it.

Whether a core can rewind at all is decided by the `savestate_features` field of its `.info` file: RetroArch refuses rewind for a `basic` core, permits it for `serialized`, and permits rewind plus runahead for `deterministic`. Read it rather than the per-core "Rewind" row on docs.libretro.com, which is stale for several cores (Dolphin and Opera both claim support they do not have):
```
grep savestate_features ~/.local/share/flatpak/app/org.libretro.RetroArch/current/active/files/share/libretro/info/<core>_libretro.info
```

Console | Core | `savestate_features` | Savestate | Rewind
--- | --- | --- | --- | ---
Atari - Jaguar | [Virtual Jaguar](https://docs.libretro.com/library/virtual_jaguar/) | none (no savestates) | -- | Impossible
Nintendo - GameCube (GCN) | [Dolphin](https://docs.libretro.com/library/dolphin/) | `basic` | -- | Refused by RetroArch
Sony - PlayStation 2 (PS2) | [LRPS2](https://docs.libretro.com/library/lrps2/) | `basic` | -- | Refused by RetroArch
The 3DO Company - 3DO | [Opera](https://docs.libretro.com/library/opera/) | `basic` | -- | Refused by RetroArch
Nintendo - NES | [Mesen](https://docs.libretro.com/library/mesen/) | `deterministic` | 1KB | Works
Sega - Mega Drive | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | `deterministic` | 26KB | Works
Nintendo - SNES | [Snes9x](https://docs.libretro.com/library/snes9x/) | `deterministic` | 102KB | Works
Nintendo - Nintendo 64 (N64) | [Mupen64Plus-Next](https://docs.libretro.com/library/mupen64plus/) | `serialized` | 986KB | Works
Sony - PlayStation (PSX) | [Beetle PSX HW](https://docs.libretro.com/library/beetle_psx_hw/) | `deterministic` | 1.1MB | Works
Sega - Saturn (SS) | [Beetle Saturn](https://docs.libretro.com/library/beetle_saturn/) | `deterministic` | 1.4MB | Works
Sega - Dreamcast (DC) | [Flycast](https://docs.libretro.com/library/flycast/) | `serialized` | 3.0MB | Works
Sony - PlayStation Portable (PSP) | [PPSSPP](https://docs.libretro.com/library/ppsspp/) | `serialized` | 5.5MB | Works
Nintendo - Nintendo DS (NDS) | [melonDS DS](https://docs.libretro.com/library/melonds_ds/) | `serialized` | | Works in NDS mode only: DSi mode has no savestates at all

Earlier versions of this page said Flycast and PPSSPP crash at boot with rewind on, that Beetle Saturn is refused
at load over threaded audio, and that Beetle PSX HW's states are too big to be worth it. **None of that held up
when tested**: all four boot and run with rewind enabled, and the savestate sizes above (read off the `.state`
files RetroArch actually wrote) put Beetle PSX HW at 1.1MB, next to the 986KB of Mupen64Plus-Next, which had
rewind on all along. Turn rewind on everywhere the core allows it and raise `rewind_buffer_size`.

Two [Core Overrides](https://docs.libretro.com/guides/overrides/) come out of the table, covering
**different, only partly overlapping** sets of cores. Keep them apart: unsetting the right-analog axes is for
the dual-analog consoles (a camera or C-stick left bound to fast-forward scrubs the game whenever the player
looks around); disabling rewind is for cores that cannot rewind (`basic` savestates or none). Applying both
to every core, as an earlier version did, switches rewind off on cores that support it and unbinds the stick
on single-stick cores that want it.

The override dir is the core's runtime `library_name`, not its `.info` name: Dolphin reports `dolphin-emu`,
and `pcsx2` reports `LRPS2 (alpha)` (newer builds drop the `(alpha)`, so the dir follows the nightly). Files
live at `config/<library_name>/<library_name>.cfg`.

`library_name` | Axes → `nul` | L3/R3 → `nul` | `rewind_enable = "false"` | Why
--- | --- | --- | --- | ---
`Beetle PSX HW` | yes | | | dual-analog; rewind stays on (L3/R3 + keyboard)
`dolphin-emu` | yes | | yes | dual-analog; `basic` savestates
`LRPS2 (alpha)` | yes | yes | yes | dual-analog; PS2 games use stick clicks; `basic`
`Virtual Jaguar` | | | yes | no savestates

Flycast, PPSSPP, and Beetle Saturn take neither override: single-stick and rewind-capable (Flycast's only
override is the `vulkan` driver, in [Video drivers](#video-drivers)).

```
# axes: Beetle PSX HW, dolphin-emu, LRPS2 (alpha)
input_hold_fast_forward_axis = "nul"
input_rewind_axis = "nul"
# btns: LRPS2 (alpha) only
input_hold_fast_forward_btn = "nul"
input_rewind_btn = "nul"
# rewind: dolphin-emu, LRPS2 (alpha), Virtual Jaguar
rewind_enable = "false"
```

### Input latency: preemptive frames

* [Run-Ahead and Preemptive Frames](https://docs.libretro.com/guides/runahead/)

Emulators reproduce the 1-3 frames of lag the original hardware had, then add their own. Preemptive frames
runs the core ahead of the display and shows the result the moment the input is known, hiding it. It is the
cheaper half of a pair: run-ahead re-runs *every* frame, preemptive frames only when the controller state
changes, for the same win. They are mutually exclusive.

```
# ~/.var/app/org.libretro.RetroArch/config/retroarch/retroarch.cfg
preemptive_frames_enable = "false"   # off globally; enabled per core
run_ahead_enabled = "false"
run_ahead_frames = "1"
```

**Off globally, on per core** (the opposite of rewind). RetroArch permits it only on a core declaring
`savestate_features = "deterministic"` and, on the rest, puts `Preemptive Frames unavailable...` on screen at
every launch. A global setting thus buys nothing on the non-deterministic cores and nags on all of them, so
enable it per core:

```bash
grep -l 'savestate_features = "deterministic"' ~/.local/share/flatpak/app/org.libretro.RetroArch/current/active/files/share/libretro/info/*.info
```

One frame is conservative: more is free only until it exceeds a game's own internal lag, past which the
picture jitters (per-game). Enable on the cheap deterministic cores (Stella, Gambatte, mGBA, Mesen, Snes9x,
Beetle PCE, Genesis Plus GX, PicoDrive). Everything else is `serialized` or `basic` and cannot take it at all
(ProSystem and Beetle Lynx included). Two cores clear the `deterministic` bar but are still left off:

Core | Why not
--- | ---
[Beetle Saturn](https://docs.libretro.com/library/beetle_saturn/) | The most expensive core in the set: interprets both SH-2s with no recompiler. An extra emulated frame is not affordable.
[Beetle PSX HW](https://docs.libretro.com/library/beetle_psx_hw/) | The only `deterministic` core here that is also hardware-rendered, the case the run-ahead docs warn against.

### Latency: swapchain images

```
# ~/.var/app/org.libretro.RetroArch/config/retroarch/retroarch.cfg
video_max_swapchain_images = "2"
```

Double rather than triple buffering: one less frame queued between the core and the screen. A desktop GPU will not
miss a deadline running 2D consoles, so the frame that triple buffering keeps in reserve only buys latency. Raise
back to `"3"` if frame pacing hiccups.

### Fullscreen and VRR

```
# ~/.var/app/org.libretro.RetroArch/config/retroarch/retroarch.cfg
video_fullscreen = "true"
video_windowed_fullscreen = "true"
```

RetroArch defaults to a window, where the compositor owns frame pacing. `windowed_fullscreen` makes
fullscreen borderless rather than an exclusive mode switch, which works under both X11 and Wayland (Wayland
has no exclusive fullscreen).

`vrr_runloop_enable` is off by default; turn it on only on a variable-refresh panel, which also needs VRR
enabled outside RetroArch (compositor setting under Wayland; `Option "VariableRefresh"` in `xorg.conf.d`
under X11, where it conflicts with `TearFree`). It is mutually exclusive with the other video-to-audio sync
methods, so it cannot combine with a swap interval above 1 or black frame insertion; a conflict shows as
audio drift with nothing visibly wrong. On a fixed-refresh panel leave VRR off and use BFI instead.

```
video_vsync = "true"                # VRR sync needs this on
video_swap_interval = "1"           # and this at 1
video_black_frame_insertion = "0"   # and BFI off; BFI is the fixed-refresh alternative
```

Other pinned globals (all off/absent by default):

Key | Value | Why
--- | --- | ---
`check_firmware_before_loading` | `true` | Refuse to launch a core whose required BIOS is missing, rather than boot a black screen or corrupt state.
`video_threaded` | `false` | A no-op for hardware-rendered cores; on software ones it buys speed by breaking frame pacing and audio sync.
`notification_show_autoconfig_fails` | `false` | A keyboard trips a "not configured in port N" toast every launch (no joypad profile) yet works anyway, so it is noise.

### Shaders

* [RGC Shaders](https://github.com/retrogamecorps/RGC-Overlay-Pack/tree/main/RGC%20shaders)

Custom shaders must be added to the globally configured directory (see [this issue](https://github.com/flathub/org.libretro.RetroArch/issues/184)), which is
`~/.local/share/flatpak/app/org.libretro.RetroArch/current/active/files/share/libretro/shaders/` when
[RetroArch is installed via Flatpak](https://github.com/flathub/org.libretro.RetroArch).

Which type of shaders you can load is determined by the video driver used:

Video driver | Shader type
--- | ---
glcore | glsl (*.glsl, *.glslp)
vulkan | slang (*.slang, *.slangp)

Recommended shader: sharp-shimmerless from [Retro Game Corps' pack](https://github.com/retrogamecorps/RGC-Overlay-Pack/tree/main/RGC%20shaders)

### Thumbnails

On Flatpak installs, thumbnails are located in `~/.var/app/org.libretro.RetroArch/config/retroarch/thumbnails/`

n.b. Thumbnail filenames cannot contain ampersand "&" characters. If the ROM name contains an ampersand, then replace it with an underscore "_" in the filenames of its thumbnails. For example, if a ROM is named "Sonic & Knuckles + Sonic The Hedgehog 3 (USA).md", its thumbnails must be named
[Sonic _ Knuckles + Sonic The Hedgehog 3 (USA).png](http://thumbnails.libretro.com/Sega%20-%20Mega%20Drive%20-%20Genesis/Named_Boxarts/Sonic%20_%20Knuckles%20%2B%20Sonic%20The%20Hedgehog%203%20%28USA%29.png).

### Video drivers

* [Changing behavior of “gl” and “glcore” video drivers](https://www.libretro.com/index.php/changing-behavior-of-gl-and-glcore-video-drivers/)

The global driver is `glcore` and three cores are overridden to `vulkan`. See
[Why the global video driver stays glcore](#why-the-global-video-driver-stays-glcore) for why it is not the other
way around.

1. Navigate to Settings -> Core
1. Set "Allow Cores to Switch the Video Driver" to "On"
1. Navigate to Settings -> Drivers
1. Set "Video Driver" to "glcore" on Linux or "d3d12" on Xbox Series
1. Save the configuration, and restart RetroArch
1. Create a [Core Override](https://docs.libretro.com/guides/overrides/) file for each of the following cores:

Console | Core | Video driver on Linux | Video driver on Xbox Series
--- | --- | --- | ---
Nintendo - Nintendo 64 | Mupen64Plus-Next | vulkan (required by ParaLLEl-RDP) | gl
Nintendo - GameCube | Dolphin | -- (global glcore) | d3d11
Sega - Dreamcast | Flycast | vulkan | d3d11
Sony - PlayStation (PSX) | Beetle PSX | -- | d3d12
Sony - PlayStation (PSX) | Beetle PSX HW | vulkan | --

```
# Set the default video driver to "glcore":
# ~/.var/app/org.libretro.RetroArch/config/retroarch/retroarch.cfg
video_driver = "glcore"

# Set Flycast to "vulkan" (same for "Beetle PSX HW" and "Mupen64Plus-Next")
# ~/.var/app/org.libretro.RetroArch/config/retroarch/config/Flycast/Flycast.cfg
video_driver = "vulkan"
```

Mupen64Plus-Next is set here rather than left to "Allow Cores to Switch the Video Driver" because hot-switching
that core to Vulkan mid-session crashes it
([mupen64plus-libretro-nx#370](https://github.com/libretro/mupen64plus-libretro-nx/issues/370)). An override is
applied before video init, so the core comes up on Vulkan instead of moving to it.

## Games

### Atari - 2600 - September 11, 1977
```
Adventure
Asteroids
Demon Attack
Dig Dug
Donkey Kong
Enduro
Frogger
H.E.R.O.
Joust
Kaboom!
Keystone Kapers
Missile Command
Ms. Pac-Man
Pitfall! - Pitfall Harry's Jungle Adventure
Q-bert
RealSports Tennis
River Raid
Space Invaders
Yars' Revenge
```

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
RoadBlasters
Rygar
S.T.U.N. Runner
Shadow of the Beast
Shanghai
Todd's Adventures in Slime World
Toki
Tournament Cyberball
Warbirds
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
Ys III - Wanderers from Ys
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
Galaga '90
Legendary Axe, The
Magical Chase
Military Madness
Neutopia
Neutopia II
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
Great Greed
Kirby's Dream Land 2
Mario's Picross
Mega Man V
Metroid II - Return of Samus
Mole Mania
Operation C
Pokemon - Red Version (https://github.com/jojobear13/shinpokered)
Pokemon - Yellow Version - Special Pikachu Edition
Super Mario Land
Super Mario Land 2 - 6 Golden Coins
Tetris - Rosy Retrospection (https://www.romhacking.net/hacks/5813/)
Tiny Toon Adventures - Babs' Big Break
Wario Land - Super Mario Land 3
Wario Land II
```
### Nintendo - Game Boy Advance (GBA) - March 21, 2001
```
Advance Wars
Advance Wars 2 - Black Hole Rising
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
F-Zero - Maximum Velocity
Final Fantasy Tactics Advance
Final Fantasy VI Advance
Fire Emblem - The Sacred Stones
Golden Sun
Golden Sun - The Lost Age
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
Mario & Luigi - Superstar Saga
Mario Kart - Super Circuit
Mega Man - Battle Network 3 - Blue Version
Mega Man Zero
Metroid - Zero Mission (https://www.romhacking.net/reviews/7650/)
Metroid Fusion
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
Baten Kaitos - Eternal Wings and the Lost Ocean
Beyond Good & Evil
F-Zero GX
Gotcha Force
Ikaruga
Incredible Hulk, The - Ultimate Destruction
Killer7
Legend of Zelda, The - The Wind Waker
Legend of Zelda, The - Twilight Princess
Luigi's Mansion
Mario Kart - Double Dash!!
Metroid Prime
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
Tales of Symphonia
TimeSplitters 2
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
Sin and Punishment - Successor of the Earth (https://www.romhacking.net/translations/920/)
Star Fox 64
Star Wars - Rogue Squadron
Star Wars Episode I - Racer
Super Mario 64
Super Smash Bros.
Turok - Dinosaur Hunter
Turok 2 - Seeds of Evil
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
Elite Beat Agents
Fire Emblem - Shadow Dragon
Ghost Trick - Phantom Detective
Grand Theft Auto - Chinatown Wars
Kingdom Hearts - 358-2 Days
Kirby - Canvas Curse
Kirby Super Star Ultra
Legend of Zelda, The - Phantom Hourglass
Mario & Luigi - Bowser's Inside Story
Mario Kart DS
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
Pokemon - Platinum Version
Pokemon Mystery Dungeon - Explorers of Sky
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
Adventure Island 3
Adventures of Lolo
Alwas Awakening
Baseball Stars
Batman - The Video Game
Battletoads
Bionic Commando
Blades of Steel
Blaster Master
Bubble Bobble
Castlevania
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
Dr. Mario
Dragon Warrior III
Dragon Warrior IV
DuckTales
Excitebike
Faxanadu
Final Fantasy
G.I. Joe - A Real American Hero
Ghosts'n Goblins
Gradius
Guardian Legend, The
Gun Nac
Kid Icarus
Kirby's Adventure
Legend of Zelda, The
Life Force
Little Nemo - The Dream Master
Little Samson
Maniac Mansion
Mega Man
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
Super Mario Bros.
Super Mario Bros. 2
Super Mario Bros. 3
Tecmo Super Bowl 2024 (https://tecmobowl.org/files/file/868-tecmo-super-bowl-2024/)
Teenage Mutant Ninja Turtles - Tournament Fighters
Teenage Mutant Ninja Turtles II - The Arcade Game
Teenage Mutant Ninja Turtles III - The Manhattan Project
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
Arkanoid
Batman Returns
Biker Mice from Mars
Breath of Fire II
Chrono Trigger (https://www.romhacking.net/hacks/3147/)
Contra III - The Alien Wars (https://github.com/VitorVilela7/SA1-Root/tree/master/Contra-III)
Demon's Crest
Donkey Kong Country
Donkey Kong Country 2 - Diddy's Kong Quest
Donkey Kong Country 3 - Dixie Kong's Double Trouble!
EarthBound
F-Zero
Final Fantasy - Mystic Quest
Final Fantasy II
Final Fantasy III
Gradius III (https://github.com/VitorVilela7/SA1-Root/tree/master/Gradius-III)
Harvest Moon
Hook
Illusion of Gaia
Judge Dredd
Ken Griffey Jr. Presents Major League Baseball
Killer Instinct
King of Dragons
Kirby Super Star
Kirby's Dream Land 3
Legend of Zelda, The - A Link to the Past (https://www.romhacking.net/reviews/11915)
Lemmings
Lion King, The
Lufia II - Rise of the Sinistrals
Magical Quest Starring Mickey Mouse, The
Mario Paint
Marvel Super Heroes in War of the Gems
Mega Man 7
Mega Man X
Mega Man X2
Mega Man X3 (https://www.romhacking.net/hacks/4086/)
Metal Warriors
Mighty Morphin Power Rangers - The Fighting Edition
Ms. Pac-Man
Pilotwings
Plumber For All Seasons, A
Secret of Mana (https://www.romhacking.net/reviews/8862/)
Shin Kidou Senki Gundam W - Endless Duel
Side Pocket
SimCity 2000 - The Ultimate City Simulator
Space Megaforce
Sparkster
Star Fox (https://www.romhacking.net/hacks/7163/)
Star Fox 2
Star Fox EX (https://www.romhacking.net/hacks/7285/)
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
Super Mario World
Super Mario World 2 - Yoshi's Island
Super Metroid
Super Punch-Out!!
Super R-Type (https://github.com/VitorVilela7/SA1-Root/tree/master/Super-R-Type)
Super Tennis
Super Turrican 2
Tecmo Super Bowl
Teenage Mutant Ninja Turtles - Tournament Fighters
Teenage Mutant Ninja Turtles IV - Turtles in Time
Terranigma
U.N. Squadron
Where in the World Is Carmen Sandiego
Wild Guns
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
Pico World Race
PICOHOT
PICORACER-2048
Shooting Star
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
Stellar Assault
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
Jet Grind Radio
King of Fighters, The - Dream Match 1999
Le Mans 24 Hours
Legacy of Kain - Soul Reaver
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
Re-Volt
Record of Lodoss War
Resident Evil - Code - Veronica
Rez
Sega Bass Fishing
Sega Rally 2
Shenmue
Shenmue II
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
Dragon Crystal
Fantasy Zone
Fatal Fury Special
Frank Thomas Big Hurt Baseball
GG Aleste 3
Godzilla - Kaijuu Daishingeki (Godzilla - Monsters Attack, https://www.romhacking.net/translations/4140/)
Joe Montana Football
Jurassic Park
Legend of Illusion Starring Mickey Mouse
Lucky Dime Caper Starring Donald Duck, The
Lunar - Sanposuru Gakuen (https://www.romhacking.net/translations/1454/)
Magical Puzzle Popils
Mighty Morphin Power Rangers - The Movie
Ninja Gaiden
Power Strike II
Ristar
Shining Force Gaiden - Final Conflict
Shinobi
Shinobi II - The Silent Fury
Sonic Drift 2
Sonic the Hedgehog - Triple Trouble
Sylvan Tale (https://www.romhacking.net/translations/67/)
Tails Adventure
Wonder Boy - The Dragon's Trap
World Series Baseball '95
X-Men
```
### Sega - Master System - Mark III (MS) - October 20, 1985
```
Alex Kidd in Miracle World
Alex Kidd in Shinobi World
Asterix
Black Belt
California Games
Deep Duck Trouble Starring Donald Duck
Double Dragon
Fantasy Zone II
Golden Axe Warrior
Golvellius - Valley of Doom
Hang On
Land of Illusion Starring Mickey Mouse
Master of Darkness
Masters of Combat
Miracle Warriors - Seal of the Dark Lord
Ninja Gaiden
Phantasy Star (https://www.romhacking.net/translations/1069/)
Power Strike
Prince of Persia
Psycho Fox
Rampage
Rastan
Reggie Jackson Baseball
Shinobi
Sonic the Hedgehog
Space Harrier
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
Dune
Ecco the Dolphin
Eternal Champions - Challenge from the Dark Side
Final Fight CD
Heart of the Alien - Out of This World Parts I and II
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
Sewer Shark
Shining Force CD
Silpheed
Snatcher
Sol-Feace
Sonic CD
Soulstar
Space Ace
Terminator, The
Vay
```
### Sega - Mega Drive - Genesis (MD) - October 29, 1988
* [Mega Drive Tracker](https://md.restartmag.com/)
```
Aladdin
Alien Soldier
Altered Beast
Arnold Palmer Tournament Golf
Bare Knuckle III (Streets of Rage III, https://www.romhacking.net/translations/1375/)
Beyond Oasis
Blades of Vengeance
Captain America and the Avengers
Castlevania - Bloodlines
Comix Zone
Contra - Hard Corps (https://www.romhacking.net/hacks/797/)
Crusader of Centy
Desert Strike - Return to the Gulf
Dune - The Battle for Arrakis
Dynamite Headdy (https://www.romhacking.net/translations/1113/)
Earthworm Jim 2
Evander Holyfield's 'Real Deal' Boxing
Fix-It Felix Jr. (http://68000.web.fc2.com/felix/index.html)
Flashback - The Quest for Identity
Ghostbusters (https://www.romhacking.net/hacks/7761/)
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
Light Crusader
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
Punisher, The
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
Sonic & Knuckles + Sonic the Hedgehog 3
Sonic 3 Complete
Sonic Spinball
Sonic the Hedgehog
Sonic the Hedgehog 2
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
Ultracore
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
Astal
Baku Baku Animal - World Zookeeper Contest
Batsugun
Bug!
Bulk Slash (https://retrogamealk.com/repository/sega_saturn_isos/bulk-slash-japan/)
Burning Rangers
Castlevania - Symphony of the Night (https://segaxtreme.net/resources/dracula-x-symphony-of-the-night.83/)
Daytona USA - Championship Circuit Edition
DecAthlete
Dragon Force
Duke Nukem 3D
Grandia (https://retrogametalk.com/repository/sega_saturn_isos/grandia-english-patched/)
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
Sega Ages - After Burner II
Sega Rally Championship
Shining Force III
Shining the Holy Ark
Shippuu Mahou Daisakusen - Kingdom-Grandprix (https://segaxtreme.net/resources/kingdom-grandprix-english-translation-patches.291/)
Sonic Jam
Stellar Assault SS (https://segaxtreme.net/resources/stellar-assault-ss-english.170/)
Street Fighter Alpha 2
Tactics Ogre - Let Us Cling Together
Ultimate Mortal Kombat 3
Virtua Cop 2
Virtua Fighter 2
Virtual On - Cyber Troopers
World Series Baseball 98
X-Men - Children of the Atom
```
### SNK - Neo Geo CD - September 9, 1994
* Redump `Japanese Romaji ~ English` dual titles; run on the NeoCD core (`.chd`). The 1999+ Neo Geo library never came to CD and needs the arcade fbneo core instead.
```
2020 Super Baseball
Aero Fighters 2
Art of Fighting 2
Baseball Stars 2
Blue's Journey
Burning Fight
Crossed Swords II
Double Dragon
Far East of Eden - Kabuki Klash
Fatal Fury Special
Ironclad
Last Blade, The
Last Blade 2, The
Last Hope (homebrew)
Last Resort
League Bowling
Magician Lord
Metal Slug 2
Mutation Nation
NAM-1975
Neo Turf Masters
Ninja Commando
Power Spikes II
Pulstar
Puzzle Bobble
Robo Army
Samurai Shodown II
Samurai Shodown RPG (Shinsetsu Samurai Spirits) (English translation)
Sengoku 2
Super Sidekicks 3 - The Next Glory
Top Hunter - Roddy & Cathy
Twinkle Star Sprites
Viewpoint
Windjammers
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
Final Fantasy VIII
Front Mission 3
Gex - Enter the Gecko
Gran Turismo 2 - Arcade Mode
Gran Turismo 2 - Simulation Mode
Gundam Battle Assault 2
Hot Shots Golf
Jumping Flash!
Klonoa - Door to Phantomile
Legend of Dragoon, The
Marvel vs. Capcom - Clash of Super Heroes
MediEvil
Mega Man Legends
Mega Man X4
Mega Man X6 (https://www.romhacking.net/hacks/4035/)
Metal Gear Solid
Misadventures of Tron Bonne, The
NBA Jam 22 (https://www.romhacking.net/hacks/5700/)
Oddworld - Abe's Oddysee
Persona
R-Type Delta
R4 - Ridge Racer Type 4
Rayman
Silent Hill
Spyro the Dragon
Suikoden II
Syphon Filter
Tekken 3
Tomb Raider
Tomba!
Twisted Metal 2
Vagrant Story
Valkyrie Profile
Vandal Hearts
Wild Arms
Wipeout XL
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
Enter the Matrix
Fight Night Round 3
Final Fantasy X
Final Fantasy XII
Giants - Citizen Kabuto
Gitaroo Man
God Hand
God of War
God of War II
Gradius V
Gran Turismo 4
Grand Theft Auto - Liberty City Stories
Grand Theft Auto - San Andreas
Grand Theft Auto - Vice City
Grand Theft Auto - Vice City Stories
Grand Theft Auto III
Guilty Gear XX Accent Core Plus
Gungrave
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
LEGO Star Wars II - The Original Trilogy
Lord of the Rings, The - The Two Towers
Madden NFL 08
Mana Khemia - Alchemists of Al-Revis
Manhunt 2
Marc Ecko's Getting Up - Contents Under Pressure
Marvel - Ultimate Alliance
Mega Man X8
Metal Gear Solid 3 - Snake Eater
Midnight Club 3 - DUB Edition
MLB 11 - The Show
Mobile Suit Gundam - Zeonic Front
Monster Hunter
NBA 2K12
NBA Street Vol. 2
Need for Speed - Carbon - Collector's Edition
NHL 07
Nickelodeon SpongeBob SquarePants - Battle for Bikini Bottom
Odin Sphere
Oni
Onimusha - Warlords
Ookami
OutRun 2006 - Coast 2 Coast
PaRappa the Rapper 2
PES 2014 - Pro Evolution Soccer
Prince of Persia - The Sands of Time
Psychonauts
Punisher, The
R-Type Final
Ratchet & Clank - Up Your Arsenal
Rogue Galaxy
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
Mega Man - Maverick Hunter X
Mega Man - Powered Up
Metal Gear Ac!d
Metal Gear Solid - Peace Walker
N Plus
PaRappa the Rapper
Patapon 2
Peggle
Phantasy Star Portable 2 Infinity (https://gbatemp.net/threads/phantasy-star-portable-2-infinity-english-localization-v2-update-released-august-2022.576943/)
PixelJunk Monsters - Deluxe
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
Ys - The Oath in Felghana
Ys Seven
```
### The 3DO Company - 3DO - October 4, 1993
```
Alone in the Dark
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
* [OpenTTD](https://www.openttd.org/) - Transport Tycoon Deluxe
* [VCMI](https://vcmi.eu/) - Heroes of Might and Magic III

### Port for Linux-based handhelds

[PortMaster](http://portmaster.games/games.html) for Anbernic and Powkiddy devices

* [2048](http://portmaster.games/detail.html?name=2048)
* [Aleph-One Marathon 1](http://portmaster.games/detail.html?name=alephone-marathon)
* [Cave Story (Evo)](https://portmaster.games/detail.html?name=cave.story-evo)
* [Celeste Classic](http://portmaster.games/detail.html?name=cceleste)
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
