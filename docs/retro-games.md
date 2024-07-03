# Retro games

* [Ansible role](https://github.com/andornaut/ansible-ctrl/tree/master/roles/games)
* [CD Romance](https://cdromance.com/) - ROM hacks
* [Homebrew games list](https://github.com/Jetup13/Retroid-Pocket-2-Plus-Wiki/wiki/Homebrew)
* [How to create CHD files](https://retropie.org.uk/docs/CHD-files/)
* [MyAbandonware](https://www.myabandonware.com/)
* [[No-Intro] PropeR 1g1r Collection (2024)](https://archive.org/details/proper1g1r-collection)
* [Pico-8](https://www.lexaloffle.com/pico-8.php)
* [ROMhacking.net](https://www.romhacking.net)
  * [ROM hack patcher (online)](https://www.romhacking.net/patch/)
* [TheGamesDB](https://thegamesdb.net)
* [Thumbnails](http://thumbnails.libretro.com/)
* [/r/Roms Megathread](https://r-roms.github.io/)

## Anbernic RG35XX+ 

* [patreon.com/blackseraph](https://www.patreon.com/blackseraph) - Lead developer of GarlicOS
* [GarlicOS 2.0 (Public Alpha) announcement](https://www.patreon.com/posts/92690050)
* [GarlicOS on GitHub](https://github.com/GarlicOS/buildroot)
* [MinUI](https://github.com/shauninman/MinUI)
  * [MinUI Paks](https://github.com/shauninman/MinUI/blob/main/PAKS.md) 
* [muOS](https://muos.xonglebongle.com/)

### MinUI

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

## Analogue Pocket

* [Analogue.co](https://www.analogue.co/)
  * [Manual](https://assets.analogue.co/pdf/f48dbccc2a7c529e3ef677db3b4ab9d8/Analogue+Pocket+User+Manual+v1.2.pdf)
* [openFPGA Cores Inventory](https://openfpga-cores-inventory.github.io/analogue-pocket/)
* [Pocket Sync](https://github.com/neil-morrison44/pocket-sync) - GUI tool to update openFPGA cores, and manage save states, save files, and screenshots
* [Analogue Pocket Updater Utility](https://github.com/mattpannella/pocket-updater-utility) - CLI tool to update openFPGA cores and firmware

## Miyoo Mini+

* [Official store on AliExpress](https://miyoo.aliexpress.com/store/1101949807?shopId=1101949807)
* [OnionOS emulators](https://onionui.github.io/docs/emulators)
* [Pico-8 wrapper](https://github.com/XK9274/pico-8-wrapper-miyoo)
* [Ports Collection](https://github.com/OnionUI/Ports-Collection)
* [/r/MiyooMini](https://www.reddit.com/r/MiyooMini/)
* Custom launchers:
  * [Allium](https://github.com/goweiwen/Allium)
  * [MinUI](https://github.com/shauninman/MinUI)
  * [OnionOS](https://github.com/OnionUI/Onion)

### RetroArch Core BIOS files

1. Find the names of recommended BIOS' for each of your emulators from the [Onion Wiki](https://onionui.github.io/docs/emulators/consoles)
1. Download the [BIOS files](https://archive.org/download/RetroarchSystemFiles/Retroarch-System/)
1. Add bios files to [`/mnt/SDCARD/BIOS`](https://onionui.github.io/docs/emulators#bios-files) on the Miyoo Mini+
1. Navigate to Apps > RetroArch > Load Core
1. Select a Core to test
1. Navigate to Apps > RetroArch -> Information > Core Information
1. Confirm that the BIOS files that you added are listed as "present"

### Enable FTP server

* [/r/MiyooMini](https://www.reddit.com/r/MiyooMini/comments/11uzlrw/fyi_you_can_enable_ftp_on_the_miyoo_mini_to_copy/)

1. Navigate to: Apps > Package Manager > Apps
1. Install the "Terminal" app
1. Navigate to: Apps > Terminal
1. Use the on-screen keyboard to enter ```tcpsvd -vE 0.0.0.0 21 ftpd -w /```, then hit `enter`

### Boxart

Add boxart or screenshots to `/mnt/SDCARD/Roms/<Emulator>/Imgs/` eg. `/mnt/SDCARD/Roms/GBA/Imgs`

## RetroArch

* [Libretro](https://www.libretro.com/)
  * [Docs](https://docs.libretro.com/)
* [RetroArch on Flathub](https://flathub.org/apps/details/org.libretro.RetroArch)
* [BIOS on GitHub](https://github.com/Abdess/retroarch_system)
* [BIOS on Internet Archive](https://archive.org/download/RetroarchSystemFiles/Retroarch-System/)
* [/r/RetroArch](https://www.reddit.com/r/RetroArch/)

### Cores

* [Emulation General Wiki](https://emulation.gametechwiki.com/index.php/Main_Page)

Platform | Core
--- | ---
Atari Jaguar | [Virtual Jaguar](https://docs.libretro.com/library/virtual_jaguar/)
Nintendo 64 (N64) | [Mupen64Plus-Next](https://docs.libretro.com/library/mupen64plus/)
Nintendo DS (DSi) | [DeSmuME](https://docs.libretro.com/library/desmume/)
Nintendo Entertainment System (NES) | [Mesen](https://docs.libretro.com/library/mesen/)
Nintendo Game Boy/Color (GB/GBC) | [SameBoy](https://docs.libretro.com/library/sameboy/)
Nintendo Game Boy Advance (GBA) | [mGBA](https://docs.libretro.com/library/mgba/)
Nintendo GameCube | [Dolphin](https://docs.libretro.com/library/dolphin/)
Sega Dreamcast | [Flycast](https://docs.libretro.com/library/flycast/)
Sega Game Gear | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/)
Sega Genesis | [Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/)
Sega Saturn | [Beetle Saturn](https://docs.libretro.com/library/beetle_saturn/) ([Mednafen](https://mednafen.github.io/))
Sony PlayStation (PSX) | [Beetle PSX HW](https://docs.libretro.com/library/beetle_psx_hw/) ([Mednafen](https://mednafen.github.io/)) on Linux or [Beetle PSX](https://docs.libretro.com/library/beetle_psx/) on Xbox Series
Super Nintendo Entertainment System (SNES) | [bsnes-hd](https://github.com/DerKoun/bsnes-hd) or [Snex9x](https://docs.libretro.com/library/snes9x/)

### Cache directory

1. Navigate to Settings -> Directories
1. Configure a "Cache" directory
1. Save the configuration, and restart RetroArch

This may fix a copy/load error when running games with Nintendo GameCube/Dolphin.
This may also prevent temporary files from littering the content directories,
which may occur if RetroArch crashes before it is able to clean up.

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
Nintendo 64 | Mupen64Plus-Next | glcore | gl
Nintendo GameCube | Dolphin | glcore | d3d11
Sega Dreamcast | Flycast | vulcan | d3d11
Sony PlayStation (PSX) | Beetle PSX | -- | d3d12
Sony PlayStation (PSX) | Beetle PSX HW | glcore | --

```
# ~/.var/app/org.libretro.RetroArch/config/retroarch/config/Flycast/Flycast.cfg
# Must be set to d3d11 on Xbox Series
video_driver = "d3d11"
```

### Rewind

"Rewind" functionality is not supported by all cores.

Console | Cores that don't support or have issues with "rewind"
--- | ---
Nintendo GameCube | [Dolphin](https://docs.libretro.com/library/dolphin/)
Sega Dreamcast | [Flycast](https://docs.libretro.com/library/flycast/)

Create a [Core Override](https://docs.libretro.com/guides/overrides/) file:

```
# ~/.var/app/org.libretro.RetroArch/config/retroarch/config/Flycast/Flycast.cfg
input_rewind_axis = "nul"
rewind_enable = "false"
```

### Controller right-analog stick

Set the following base configuration:
```
# ~/.var/app/org.libretro.RetroArch/config/retroarch/retroarch.cfg
input_hold_fast_forward_axis = "+2"
input_rewind_axis = "-2"
```

Unset the right-analog stick mappings for cores that do not support "rewind" or "fast-forward" or for consoles that make use of the right-analog stick, such as the Nintendo GameCube:
```
# ~/.var/app/org.libretro.RetroArch/config/retroarch/config/dolphin-emu/dolphin-emu.cfg
input_hold_fast_forward_axis = "nul"
input_rewind_axis = "nul"
```

### RetroArch on Xbox Series

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

### Troubleshooting

#### Disable Kiosk Mode

```
configFile=~/.var/app/org.libretro.RetroArch/config/retroarch/retroarch.cfg
sed -i 's/\(kiosk_mode_enable\s*=\).*/\1 "false"/g' ${configFile}
```

#### Fix "Failed to load content" error

* Try deleting and recreating the Playlist.
* Try using unzipped (uncompressed) ROM files.

## Recommended games

### Atari Jaguar - November 23, 1993
```
Alien vs Predator
Cannon Fodder
Defender 2000
Doom
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
### Nintendo - DS - November 21, 2004
```
Advance Wars: Dual Strike
Castlevania: Order of Ecclesia
Chrono Trigger
Dragon Quest V: Hand of the Heavenly Bride
Fire Emblem: Shadow Dragon
Grand Theft Auto - Chinatown Wars
Kirby Super Star Ultra
Mario Kart DS
Mega Man ZX
New Super Mario Bros.
Phoenix Wright: Ace Attorney
Pokémon HeartGold & SoulSilver
Pokémon Platinum
Rune Factory 3
```
### Nintendo - Game Boy - April 21, 1989
```
Bubble Bobble
BurgerTime Deluxe
Castlevania II: Belmont's Revenge
Donkey Kong
Kirby's Dream Land 2
Legend of Zelda, The - Link's Awakening
Pokemon - Red Version
Pokemon - Yellow Version - Special Pikachu Edition
Super Mario Land 2 - 6 Golden Coins
Tetris - Rosy Retrospection (https://www.romhacking.net/hacks/5813/)
Wario Land II
```
### Nintendo - Game Boy Advance - March 21, 2001
```
Advance Wars 
Advance Wars 2
Apotris (https://akouzoukos.com/apotris/)
Astro Boy - Omega Factor
Castlevania - Aria of Sorrow
F-Zero - Maximum Velocity
Final Fantasy Tactics Advance
Final Fantasy VI Advance
Fire Emblem - The Sacred Stones
Golden Sun
Gunstar Super Heroes
Harvest Moon - Friends of Mineral Town
Kirby & The Amazing Mirror
Legend of Zelda, The - The Minish Cap
Mario & Luigi - Superstar Saga
Mario Kart - Super Circuit
Mega Man Zero
Metroid - Zero Mission
Pokemon - Emerald Version
Pokemon - FireRed Version
Pokemon - LeafGreen Version
Pokemon Unbound (https://www.pokecommunity.com/showthread.php?t=382178)
Sonic Advance 3
TMNT
Tony Hawk's Pro Skater 2
Ultimate Card Games
WarioWare, Inc. - Mega Microgame$!
```
### Nintendo - GameCube - September 14, 2001
```
Animal Crossing
Beyond Good & Evil
F-Zero GX
Gotcha Force
Legend of Zelda, The - The Wind Waker
Legend of Zelda, The - Twilight Princess
Luigi's Mansion
Mario Kart - Double Dash!!
Metroid Prime 2 - Echoes
NBA Street Vol. 2
Need for Speed - Underground 2
Paper Mario - The Thousand-Year Door
Pikmin 2
SSX Tricky
Skies of Arcadia Legends
Sonic Adventure 2 - Battle
Star Wars - Rogue Squadron II - Rogue Leader
Super Mario Sunshine
Super Monkey Ball
Super Smash Bros. Melee
Tony Hawk's Pro Skater 3
```
### Nintendo - Nintendo 64 - June 23, 1996
```
1080 Snowboarding
Banjo-Kazooie
Diddy Kong Racing
Donkey Kong 64
Excitebike 64
F-Zero X
International Superstar Soccer 2000
Kirby 64 - The Crystal Shards
Legend of Zelda, The - Majora's Mask
Legend of Zelda, The - Ocarina of Time
Mario Golf
Mario Kart 64
Mario Tennis
Paper Mario
Pilotwings 64
Pokemon Puzzle League
Star Fox 64
Star Wars - Rogue Squadron
Super Mario 64
Super Smash Bros.
Turok - Dinosaur Hunter
WWF No Mercy
Wave Race 64 - Kawasaki Jet Ski
```
### Nintendo - Nintendo Entertainment System (NES) - October 18, 1985
```
Batman - The Video Game
Blaster Master
Bubble Bobble
Castlevania III - Dracula's Curse
Chip 'n Dale - Rescue Rangers
Contra
Double Dragon II
Dr. Mario
DuckTales
Gradius
Kirby's Adventure
Legend of Zelda, The
Mega Man 2
Mega Man 4
Metroid
Ninja Gaiden
Pac-Man - Championship Edition (https://archive.org/details/championship)
Punch-Out!!
River City Ransom
Super Mario Bros.
Super Mario Bros. 2
Super Mario Bros. 3
Tecmo Super Bowl 2024 Presented by TecmoBowl.org (https://tecmobowl.org/files/file/821-tecmo-super-bowl-2024-presented-by-tecmobowlorg/)
Teenage Mutant Ninja Turtles III - The Manhattan Project
```
### Nintendo - Super Nintendo Entertainment System (SNES) - November 21, 1990
```
Chrono Trigger
Contra III - The Alien Wars
Donkey Kong Country
Donkey Kong Country 2 - Diddy's Kong Quest
EarthBound
F-Zero
Final Fantasy - Mystic Quest
Final Fantasy II
Final Fantasy III
Gundam Wing - Endless Duel
Hook
Illusion of Gaia
Ken Griffey Jr. Presents Major League Baseball
Killer Instinct
Kirby's Dream Land 3
Kirby Super Star
Legend of Zelda, The - A Link to the Past
Lemmings
Lufia II - Rise of the Sinistrals
Mario Paint
Mega Man X
Mega Man X2
Ms. Pac-Man
NBA Jam - Tournament Edition
Secret of Mana
SimCity 2000
Space Megaforce
Sparkster
Star Fox
Star Fox EX (https://www.romhacking.net/hacks/7285/)
Star Trek - The Next Generation - Future's Past
Street Fighter II Turbo
Super Bomberman
Super Castlevania IV
Super Double Dragon
Super Mario All-Stars
Super Mario Kart
Super Mario RPG - Legend of the Seven Stars
Super Mario World
Super Mario World 2 - Yoshi's Island
Super Metroid
Super Punch-Out!!
Super Tennis
Tecmo Super Bowl
Teenage Mutant Ninja Turtles - Tournament Fighters
Teenage Mutant Ninja Turtles IV - Turtles in Time
Terranigma
Where in the World Is Carmen Sandiego
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
### Sega - Dreamcast - November 27, 1998
```
Border Down
Crazy Taxi
Garou - Mark of the Wolves
Grandia II
Jet Grind Radio
Marvel vs. Capcom 2
NFL Blitz 2000
Phantasy Star Online Ver. 2
Power Stone
Rayman 2 - The Great Escape
Rez
Sega Bass Fishing
Sonic Adventure
Soulcalibur
Space Channel 5
Spider-Man
Street Fighter Alpha 3
Street Fighter III - 3rd Strike
The King of Fighters - Dream Match 1999 
Tony Hawk's Pro Skater 2
Virtua Fighter 3tb
```
### Sega - Game Gear - October 6, 1990
```
Castle of Illusion Starring Mickey Mouse
Coca-Cola Kid
Columns
Fantasy Zone
Legend of Illusion Starring Mickey Mouse
Lucky Dime Caper Starring Donald Duck, The
Ninja Gaiden
Power Strike II
Ristar
Shining Force - The Sword of Hajya
Shinobi
World Series Baseball
X-Men
```
### Sega - Genesis - October 29, 1988
```
After Burner II
Aladdin
Altered Beast
Beyond Oasis
Castlevania - Bloodlines
Comix Zone
Desert Strike - Return to the Gulf
Earthworm Jim
Ecco the Dolphin
Eternal Champions
Evander Holyfield's 'Real Deal' Boxing
Golden Axe
Gunstar Heroes
Herzog Zwei
Micro Machines 2 - Turbo Tournament 
MUSHA - Metallic Uniframe Super Hybrid Armor
Madden NFL 95
Michael Jackson's Moonwalker
Mortal Kombat II
NFL Sports Talk Football '93 Starring Joe Montana
NHL '94
NHL '94 - 2023 Edition by Adam Catalyst (https://www.romhacking.net/hacks/7454/)
OutRun
Phantasy Star IV
Pirates! Gold
Revenge of Shinobi, The
Road Rash 3
Rocket Knight Adventures
Shining Force II
Shinobi III - Return of the Ninja Master
Sonic The Hedgehog
Sonic The Hedgehog 2
Sonic The Hedgehog 3
Space Harrier II
Strider
Streets of Rage 2
Super Hang-On
Super Monaco GP
Super Thunder Blade
Teenage Mutant Ninja Turtles - Shredder's Re-Revenge (https://www.romhacking.net/hacks/7399/)
Teenage Mutant Ninja Turtles - The Hyperstone Heist
Thunder Force IV
ToeJam & Earl
Virtua Racing
World Series Baseball 98
X-Men
X-Men 2 - Clone Wars
```
### Sega - Saturn - November 22, 1994
```
Astal
Batsugun
Burning Rangers
Daytona USA - Championship Circuit Edition
Dragon Force
Guardian Heroes
Manx TT SuperBike
Marvel Super Heroes
NiGHTS into Dreams...
Panzer Dragoon Saga
Radiant Silvergun
Rayman
Road Rash
Saturn Bomberman
Sega Rally Championship
Shining Force III
Shining the Holy Ark
Shippuu Mahou Daisakusen - Kingdom Grandprix (English translation patch: https://segaxtreme.net/resources/kingdom-grandprix-english-translation-patches.291/)
Sonic Jam
Street Fighter Alpha 2
Virtua Cop 2
Virtua Fighter 2
Virtual On - Cyber Troopers
X-Men - Children of the Atom
X-Men vs. Street Fighter
```
### Sony - PlayStation (PSX) - December 3, 1994
```
Ace Combat 3 - Electrosphere
Ape Escape
Armored Core
Battle Arena Toshinden
Bust-A-Move 2 - Arcade Edition
Castlevania - Symphony of the Night
Chrono Cross
Crash Bandicoot 2 - Cortex Strikes Back
Diablo
Final Fantasy Tactics
Final Fantasy VII
Gex - Enter the Gecko
Gran Turismo 2 (Arcade Mode)
Gran Turismo 2 (Simulation Mode)
Grandia
Hot Shots Golf
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
Spyro the Dragon
Suikoden II
Syphon Filter
Tekken 3
Tomb Raider
Twisted Metal 2
Wipeout XL
Xenogears
```
