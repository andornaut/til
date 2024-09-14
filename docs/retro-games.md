# Retro games

* [Ansible role](https://github.com/andornaut/ansible-ctrl/tree/master/roles/games)
* [CD Romance](https://cdromance.com/) - ROM hacks
* [Homebrew games list](https://github.com/Jetup13/Retroid-Pocket-2-Plus-Wiki/wiki/Homebrew)
* [How to create CHD files](https://retropie.org.uk/docs/CHD-files/)
* [MyAbandonware](https://www.myabandonware.com/)
* [[No-Intro] PropeR 1g1r Collection (2024)](https://archive.org/details/proper1g1r-collection)
* [Pico-8](https://www.lexaloffle.com/pico-8.php)
* [PortMaster](https://portmaster.games/)
* [RetroAchievements](https://retroachievements.org/)
* [ROMhacking.net](https://www.romhacking.net)
  * [ROM hack patcher (online)](https://www.romhacking.net/patch/)
* [TheGamesDB](https://thegamesdb.net)
* [/r/Roms Megathread](https://r-roms.github.io/)
* [/v/'s Recommended Games Wiki](https://vsrecommendedgames.fandom.com/wiki/V/%27s_Recommended_Games_Wiki)
* [Video Game Museum](https://www.video-games-museum.com/en)
* [Vimm's Lair](https://vimm.net/)
* Artwork
  * [System images (larger)](https://github.com/ruckage/es-theme-snes-mini/blob/master/art/icons_usa/)
  * [System images (smaller)](https://github.com/Vidnez/retro-systems-icons-for-GarlicOS/tree/master/system) 
  * [Thumbnails](http://thumbnails.libretro.com/)

## Hardware

### Anbernic RG35XX+ and RG40XXV

* [Anbernic official store](https://anbernic.com/)
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
  * [Overlays](https://github.com/antiKk/muOS-Overlays)
  * [Themes](https://github.com/MustardOS/theme)

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
1. Download the [BIOS files](https://archive.org/download/RetroarchSystemFiles/Retroarch-System/)
1. Add bios files to [`/mnt/SDCARD/BIOS`](https://onionui.github.io/docs/emulators#bios-files) on the Miyoo Mini+
1. Navigate to Apps > RetroArch > Load Core
1. Select a Core to test
1. Navigate to Apps > RetroArch -> Information > Core Information
1. Confirm that the BIOS files that you added are listed as "present"

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

* Try deleting and recreating the Playlist.
* Try using unzipped (uncompressed) ROM files.

## RetroArch

* [Libretro](https://www.libretro.com/)
  * [Docs](https://docs.libretro.com/)
* [RetroArch on Flathub](https://flathub.org/apps/details/org.libretro.RetroArch)
* [BIOS on GitHub](https://github.com/Abdess/retroarch_system)
* [BIOS on Internet Archive](https://archive.org/download/RetroarchSystemFiles/Retroarch-System/)
* [RGC: RetroArch Starter Guide](https://retrogamecorps.com/2022/02/28/retroarch-starter-guide/)
* [Keyboard bindings for Menus/UI](https://docs.libretro.com/guides/input-and-controls/#menu-controls)
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

Platform | Desktop core (x64) | Handheld core (ARM)
--- | --- | ---
Atari - Jaguar | [Virtual Jaguar](https://docs.libretro.com/library/virtual_jaguar/) | [Virtual Jaguar](https://docs.libretro.com/library/virtual_jaguar/)
NEC - PC Engine - TurboGrafx 16 (PCE) | [Beetle PCE FAST](https://docs.libretro.com/library/beetle_pce_fast/) | [Beetle PCE FAST](https://docs.libretro.com/library/beetle_pce_fast/)
NEC - PC Engine CD - TurboGrafx-CD (PCE) | [Beetle PCE FAST](https://docs.libretro.com/library/beetle_pce_fast/) | [Beetle PCE FAST](https://docs.libretro.com/library/beetle_pce_fast/)
Nintendo - Game Boy (GB) | [Gambatte](https://docs.libretro.com/library/gambatte/) | [Gambatte](https://docs.libretro.com/library/gambatte/) 
Nintendo - Game Boy Advance (GBA) | [mGBA](https://docs.libretro.com/library/mgba/) | [mGBA](https://docs.libretro.com/library/mgba/) 
Nintendo - Game Boy Color (GBC) | [Gambatte](https://docs.libretro.com/library/gambatte/) | [Gambatte](https://docs.libretro.com/library/gambatte/)
Nintendo - GameCube (GCN) | [Dolphin](https://docs.libretro.com/library/dolphin/) | --
Nintendo - Nintendo 64 (N64) | [Mupen64Plus-Next](https://docs.libretro.com/library/mupen64plus/) | [Mupen64Plus ](https://docs.libretro.com/library/mupen64plus/)
Nintendo - Nintendo DS (NDS) | [melonDS](https://docs.libretro.com/library/melonds/) | [DraStic](https://drastic-ds.com) (Standalone)
Nintendo - Nintendo Entertainment System (FC, NES) | [Mesen](https://docs.libretro.com/library/mesen/) | [FCEUmm](https://docs.libretro.com/library/fceumm/)
Nintendo - Super Nintendo Entertainment System (SFC, SNES) | [Snes9x](https://docs.libretro.com/library/snes9x/) | [Supafaust](https://github.com/libretro/supafaust)
Sega - 32X | [PicoDrive](https://docs.libretro.com/library/picodrive/) | [PicoDrive](https://docs.libretro.com/library/picodrive/)
Sega - Dreamcast (DC) | [Flycast](https://docs.libretro.com/library/flycast/) | [Flycast VL](https://docs.libretro.com/library/flycast/)
Sega - Game Gear (GG) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/)
Sega - Master System - Mark III (MS) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/)
Sega - Mega-CD - Sega CD | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/)
Sega - Mega Drive - Genesis (MD) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/) | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/)
Sega - Saturn (SS) | [Beetle Saturn](https://docs.libretro.com/library/beetle_saturn/) | [YabaSanshiro](https://docs.libretro.com/library/yabasanshiro/) (Doesn't support .m3u)
Sony - PlayStation (PSX) | [Beetle PSX HW](https://docs.libretro.com/library/beetle_psx_hw/) ([Beetle PSX](https://docs.libretro.com/library/beetle_psx/) on Xbox Series) | [PCSX ReARMed](https://docs.libretro.com/library/pcsx_rearmed/)

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

#### Configure the controller right-analog stick

Set the following base configuration:
```
# ~/.var/app/org.libretro.RetroArch/config/retroarch/retroarch.cfg
input_hold_fast_forward_axis = "+2"
input_rewind_axis = "-2"
rewind_enable = "true"
```

#### Disable rewind for cores that don't support it

"Rewind" functionality is not supported by all cores.

Console | Cores that don't support rewind
--- | ---
Atari - Jaguar | [Virtual Jaguar](https://docs.libretro.com/library/virtual_jaguar/)
Nintendo - GameCube (GCN) | [Dolphin](https://docs.libretro.com/library/dolphin/)
Sega - Dreamcast (DC) | [Flycast](https://docs.libretro.com/library/flycast/)

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

### Atari - Jaguar - November 23, 1993
```
Alien vs Predator
Cannon Fodder
Defender 2000
Flashback - The Quest for Identity
Iron Soldier
Power Drive Rally
Protector - Special Edition
Raiden
Ruiner Pinball
Super Burnout
Tempest 2000
Wolfenstein 3D
```
### NEC - PC Engine CD - TurboGrafx-CD - December 4, 1988
* [English translation ROM hacks](https://www.romhacking.net/?page=translations&genre=&platform=5&status=&languageid=12&perpage=20&order=&dir=&title=&author=&transsearch=Go)
* [List Japanese releases that are playable in English](https://www.reddit.com/r/TurboGrafx/comments/g047qm/pc_engine_games_that_are_fully_in_english/)

```
Akumajou Dracula X - Chi no Rondo (Castlevania - Rondo of Blood) (https://www.romhacking.net/translations/846/)
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
### NEC - PC Engine - TurboGrafx 16 (PCE) - October 30, 1987
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
Pokemon - Red Version
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
Apotris (https://akouzoukos.com/apotris/)
Asterix & Obelix XXL
Astro Boy - Omega Factor
Banjo-Kazooie - Grunty's Revenge
Castlevania - Aria of Sorrow
Crash Bandicoot - The Huge Adventure
Final Fantasy Tactics Advance
Final Fantasy VI Advance
Fire Emblem - The Sacred Stones
F-Zero - Maximum Velocity
Golden Sun - The Lost Age
Golden Sun
Gunstar Super Heroes
Harvest Moon - Friends of Mineral Town
Kirby & The Amazing Mirror
Legend of Zelda, The - The Minish Cap
Mario Kart - Super Circuit
Mario & Luigi - Superstar Saga
Megaman - Battle Network 3 - Blue Version
Mega Man Zero
Metroid Fusion
Metroid - Zero Mission
Mother 3
Ninja Five-0
Pokemon - Emerald Version
Pokemon - FireRed Version
Pokemon - LeafGreen Version
Pokemon Unbound (https://www.pokecommunity.com/showthread.php?t=382178)
Sigma Star Saga
Sonic Advance 3
Spider-Man - Mysterio's Menace
Spyro 2 - Season of Flame
Super Mario Advance 3 - Yoshi's Island
Super Monkey Ball Jr.
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
Legend of Zelda, The - Link's Awakening DX
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
Tony Hawk's Pro Skater 3
```
### Nintendo - Nintendo 64 (N64) - June 23, 1996
```
007 - The World Is Not Enough
1080 Snowboarding
Banjo-Kazooie
Banjo-Tooie
Blast Corps
Bomberman 64
Conker's Bad Fur Day
Diddy Kong Racing
Donkey Kong 64
Excitebike 64
F-Zero X
GoldenEye 007
Harvest Moon 64
Indiana Jones and the Infernal Machine
International Superstar Soccer 2000
Jet Force Gemini
Kirby 64 - The Crystal Shards
Legend of Zelda, The - Majora's Mask
Legend of Zelda, The - Ocarina of Time
Mario Golf
Mario Kart 64
Mario Tennis
Mega Man 64
Mystical Ninja Starring Goemon
Ogre Battle 64 - Person of Lordly Caliber
Paper Mario
Perfect Dark
Pilotwings 64
Pokemon Puzzle League
Pokemon Snap
Pokemon Stadium 2
Star Fox 64
Star Wars Episode I - Racer
Star Wars - Rogue Squadron
Super Mario 64
Super Smash Bros.
Turok 2 - Seeds of Evil
Turok - Dinosaur Hunter
Wave Race 64 - Kawasaki Jet Ski
WWF No Mercy
Yoshi's Story
```
### Nintendo - Nintendo DS (NDS) - November 21, 2004
```
Advance Wars - Dual Strike
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
Batman - The Video Game
Battletoads
Bionic Commando
Blades of Steel
Blaster Master
Bubble Bobble
Castlevania III - Dracula's Curse
Chip 'n Dale - Rescue Rangers
Contra
Crystalis
Darkwing Duck
Donkey Kong
Double Dragon II - The Revenge
Dragon Warrior IV
Dr. Mario
DuckTales
Excitebike
Faxanadu
Ghosts'n Goblins
Gradius
Kirby's Adventure
Legend of Zelda, The
Life Force
Mega Man 2
Mega Man 4
Metroid
NES Open Tournament Golf
Ninja Gaiden
Pac-Man - Championship Edition (https://retroachievements.org/game/16549)
Pin Bot
Punch-Out!!
Q-bert
River City Ransom
Rygar
StarTropics
Super Mario Bros. 2
Super Mario Bros. 3
Super Mario Bros.
Tecmo Super Bowl 2024 (https://tecmobowl.org/files/file/868-tecmo-super-bowl-2024/)
Teenage Mutant Ninja Turtles III - The Manhattan Project
Zelda II - The Adventure of Link
```
### Nintendo - Super Nintendo Entertainment System (SFC, SNES) - November 21, 1990
```
ActRaiser
Batman Returns
Biker Mice from Mars
Chrono Trigger
Contra III - The Alien Wars
Donkey Kong Country 2 - Diddy's Kong Quest
Donkey Kong Country 3 - Dixie Kong's Double Trouble!
Donkey Kong Country
EarthBound
Final Fantasy III
Final Fantasy II
Final Fantasy - Mystic Quest
F-Zero
Harvest Moon
Hook
Illusion of Gaia
Ken Griffey Jr. Presents Major League Baseball
Killer Instinct
Kirby's Dream Land 3
Kirby Super Star
Legend of Zelda, The - A Link to the Past
Lemmings
Lufia II - Rise of the Sinistrals
Magical Quest Starring Mickey Mouse, The
Mario Paint
Marvel Super Heroes in War of the Gems
Mega Man X2
Mega Man X
Metal Warriors
Ms. Pac-Man
Pilotwings
Secret of Mana
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
Super Mario All-Stars
Super Mario Kart
Super Mario RPG - Legend of the Seven Stars
Super Mario World 2 - Yoshi's Island
Super Mario World
Super Metroid
Super Punch-Out!!
Super Tennis
Tecmo Super Bowl
Teenage Mutant Ninja Turtles IV - Turtles in Time
Teenage Mutant Ninja Turtles - Tournament Fighters
Terranigma
Where in the World Is Carmen Sandiego
X-Men - Mutant Apocalypse
Zombies Ate My Neighbors
```
### Pico-8 - April 2015
```
Ascent
Birds With Guns
Breakout Hero
Celeste
Cherry Bomb
Dank Tomb
Dinky Kong
Golf Sunday
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
Steel Surge: Revolution
```
### Sega - 32X - November 21, 1994
```
After Burner Complete
Blackthorne
Knuckles' Chaotix
Kolibri
Mortal Kombat II
NBA Jam - Tournament Edition
Pitfall - The Mayan Adventure
Space Harrier
Star Trek - Starfleet Academy - Starship Bridge Simulator
Star Wars Arcade
Stellar Assault
Virtua Fighter
Virtua Racing Deluxe
WWF WrestleMania - The Arcade Game
```
### Sega - Dreamcast (DC) - November 27, 1998
```
Bangai-O
Border Down
Capcom vs. SNK
Crazy Taxi
Dead or Alive 2
Dynamite Cop!
Garou - Mark of the Wolves
Grandia II
Hydro Thunder
Ikaruga
Jet Grind Radio
Le Mans 24 Hours
Legacy of Kain - Soul Reaver
Mars Matrix
Marvel vs. Capcom 2
MSR - Metropolis Street Racer
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
Castle of Illusion Starring Mickey Mouse
Coca-Cola Kid
Columns
Crystal Warriors
Defenders of Oasis
Fantasy Zone
Fatal Fury Special
Joe Montana Football
Legend of Illusion Starring Mickey Mouse
Lucky Dime Caper Starring Donald Duck, The
Mighty Morphin Power Rangers - The Movie
Ninja Gaiden
Power Strike II
Ristar
Shining Force - The Sword of Hajya
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
Phantasy Star
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
Night Trap
Popful Mail
Road Avenger
Robo Aleste
Secret of Monkey Island, The
Shining Force CD
Silpheed
Snatcher
Sonic CD
SoulStar
Terminator, The
Vay
```
### Sega - Mega Drive - Genesis (MD) - October 29, 1988
```
After Burner II
Aladdin
Altered Beast
Arnold Palmer Tournament Golf
Bare Knuckle III (Streets of Rage III) (https://www.romhacking.net/translations/1375/)
Beyond Oasis
Castlevania - Bloodlines
Comix Zone
Desert Strike - Return to the Gulf
Dune - The Battle for Arrakis
Earthworm Jim 2
Evander Holyfield's 'Real Deal' Boxing
Fix-It Felix Jr. (http://68000.web.fc2.com/felix/index.html)
Flashback - The Quest for Identity
Ghostbusters - Special Edition (https://www.romhacking.net/hacks/7761/)
Golden Axe
Greatest Heavyweights
Gunstar Heroes
Herzog Zwei
Jungle Strike
Jurassic Park - Rampage Edition
Lost Vikings, The
Madden NFL 95
Marble Madness
Michael Jackson's Moonwalker
Micro Machines 2 - Turbo Tournament 
Monster World IV
MUSHA - Metallic Uniframe Super Hybrid Armor
NFL Sports Talk Football '93 Starring Joe Montana
NHL '94
NHL '94 - 2024 Edition (https://www.romhacking.net/hacks/8267/)
OutRun
PGA European Tour
Phantasy Star IV
Pirates! Gold
Ranger X
Revenge of Shinobi, The
Road Rash 3
Rocket Knight Adventures
Shadow Dancer - The Secret of Shinobi
Shadowrun
Shining Force II
Shinobi III - Return of the Ninja Master
Sonic & Knuckles + Sonic The Hedgehog 3
Sonic The Hedgehog
Sonic The Hedgehog 2
Space Harrier II
Streets of Rage
Streets of Rage 2
Strider
Super Hang-On
Super Monaco GP
Super Thunder Blade
Sword of Vermilion
Teenage Mutant Ninja Turtles - Shredder's Re-Revenge (https://www.romhacking.net/hacks/7399/)
Teenage Mutant Ninja Turtles - The Hyperstone Heist
Thunder Force IV
ToeJam & Earl
Ultimate Mortal Kombat 3
Urban Strike
World of Illusion Starring Mickey Mouse and Donald Duck
World Series Baseball 98
X-Men
X-Men 2 - Clone Wars
```
### Sega - Saturn (SS) - November 22, 1994

* [Fan translations](https://www.reddit.com/r/SegaSaturn/comments/10i21uc/sega_saturn_fan_translation_projects/)
* [Sega Saturn Patcher](https://segaxtreme.net/resources/sega-saturn-patcher.73/)

```
Akumajou Dracula X - Gekka no Yasoukyoku (Castlevania - Symphony of the Night) (https://segaxtreme.net/resources/dracula-x-symphony-of-the-night.83/)
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
Road Rash
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
Ape Escape
Arcade's Greatest Hits - The Atari Collection 1
Arcade's Greatest Hits - The Atari Collection 2
Arcade's Greatest Hits - The Midway Collection 2
Armored Core
Battle Arena Toshinden
Bust-A-Move 2 - Arcade Edition
Castlevania - Symphony of the Night
Chrono Cross
Crash Bandicoot 2 - Cortex Strikes Back
CTR - Crash Team Racing
Diablo
Doom
Final Fantasy Tactics
Final Fantasy IX
Final Fantasy VII
Gex - Enter the Gecko
Gran Turismo 2 - Arcade Mode
Gran Turismo 2 - Simulation Mode
Grandia
Hot Shots Golf
Marvel vs. Capcom - Clash of Super Heroes
MediEvil
Mega Man Legends
Mega Man X4
Mega Man X6 (https://www.romhacking.net/hacks/4035/)
Metal Gear Solid
NBA Jam 22 (https://www.romhacking.net/hacks/5700/)
Oddworld - Abe's Exoddus
PaRappa the Rapper
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
Twisted Metal 2
Vandal Hearts
Wipeout XL
X-Men - Mutant Apocalypse
Xenogears
```

## PC Games

### Engine (re-)implementations

* [openblack](https://github.com/openblack/openblack) - Black & White
* [OpenJKDF2](https://github.com/shinyquagsire23/OpenJKDF2/) - Dark Forces II: Jedi Knight
* [OpenMW](https://openmw.org/) - The Elder Scrolls III: Morrowind
* [OpenRA](https://github.com/OpenRA/OpenRA) - Command & Conquer: Red Alert
* [OpenTDD](https://www.openttd.org/) - Transport Tycoon Deluxe
* [VCMI](https://vcmi.eu/) - Heroes of Might and Magic III

### Port for Linux-based handhelds

[PortMaster](http://portmaster.games/games.html) for Anbernic and Powkiddy devices

* [2048](http://portmaster.games/detail.html?name=2048)
* [Aleph-One Marathon 1](http://portmaster.games/detail.html?name=alephone-marathon&devices=)
* [Axiom Verge](http://portmaster.games/detail.html?name=axiom.verge)*
* [Balatro](http://portmaster.games/detail.html?name=balatro)*
* [Cave Story](https://portmaster.games/detail.html?name=cave.story)
* [Chasm](http://portmaster.games/detail.html?name=chasm)*
* [ClassiCube](http://portmaster.games/detail.html?name=classicube)
* [Downwell](http://portmaster.games/detail.html?name=downwell)*
* [Duke Nukem 3D](http://portmaster.games/detail.html?name=duke.nukem.3d)*
* [Echo Chamber](http://portmaster.games/detail.html?name=echo_chamber&devices=) - Doesn't work on muOS: Runs, but controls (other than "select") don't work
* [Fallout 1](http://portmaster.games/detail.html?name=fallout1&devices=)*
* [Fallout 2](http://portmaster.games/detail.html?name=fallout2&devices=)*
* [Grand Theft Auto 3](http://portmaster.games/detail.html?name=gta3)*
* [Grand Theft Auto Vice City](http://portmaster.games/detail.html?name=gtavc)*
* [Gravity Circuit](http://portmaster.games/detail.html?name=gravitycircuit)*
* [Half-Life](http://portmaster.games/detail.html?name=half-life&devices=)*
* [Maldita Castilla](http://portmaster.games/detail.html?name=maldita.castilla&devices=)
* [Minetest](http://portmaster.games/detail.html?name=minetest) - Requires more than 1GB of RAM for single player
* [OpenRCT2](http://portmaster.games/detail.html?name=openrct2)*
* [RAWGL](http://portmaster.games/detail.html?name=rawgl)
* [Shovel Knight Treasure Trove](http://portmaster.games/detail.html?name=shovel.knight)*
* [Sonic Mania](https://portmaster.games/detail.html?name=sonic.mania)*
* [Sonic Robo Blast 2 (SRB2)](http://portmaster.games/detail.html?name=srb2)
* [Space Cadet Pinball](http://portmaster.games/detail.html?name=space.cadet.pinball)*
* [Stardew Valley](http://portmaster.games/detail.html?name=stardewvalley)*
* [TMNT: Shredder's Revenge](http://portmaster.games/detail.html?name=tmntsr)*
* [Timespinner](http://portmaster.games/detail.html?name=timespinner)*
* [Ur-Quan Masters (UQM)](http://portmaster.games/detail.html?name=uqm)
* [VCMI - Heroes of Might and Magic III](http://portmaster.games/detail.html?name=vcmi&devices=)*

(`*` indicates that the port requires additional files to be installed)
