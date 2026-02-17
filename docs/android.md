# Android

* [APK Mirror](https://www.apkmirror.com/)

## Applications

Name | Description
--- | ---
[CDisplayEx](https://www.cdisplayex.com/) | Comic reader (.cbr files)
[GlassesOn](https://play.google.com/store/apps/details?id=com.sixoversix.copyglass&hl=en_CA) | Pupillary distance calculator
[OpenVPN for Android](https://play.google.com/store/apps/details?id=de.blinkt.openvpn) | Unofficial OpenVPN client
[prim-ftpd](https://github.com/wolpi/prim-ftpd) | FTP server
[ReadEra](https://readera.org/) | Ebook reader
[Solid Explorer](https://neatbytes.com/solidexplorer/) | File manager
[TOwaste](https://www.toronto.ca/services-payments/recycling-organics-garbage/towaste-app/) | Find out what waste items go where, what bins to put out when, and where to donate used items or find a City of Toronto drop-off depot
[VLC Media Player](https://www.videolan.org/vlc/) | Multimedia (audio & video) player

## ADB Debugging

* [ADB tips and tricks](https://www.xda-developers.com/adb-tips-tricks/)
* [HomeAssistant Android Debug Bridge setup](https://www.home-assistant.io/integrations/androidtv/#adb-setup)
* [Intents](https://gist.github.com/mcfrojd/9e6875e1db5c089b1e3ddeb7dba0f304)

1. From the Android TV device: Navigate to Settings > About
1. Scroll down to the bottom and click on "Build" and until you see the message "You are now a developer!"
1. Navigate to Settings > Developer options
1. Enable "USB debugging" and "Wireless debugging"

### Connect via USB

```bash
$ adb devices
List of devices attached
296b55ab        device

# It should show a list of devices as above. If it says "unauthorized", then check the android device to see if there's a USB debugging popup.
```

### Connect via network

1. Navigate to Android Settings -> System - Developer Options
1. Enable: USB debugging
1. Select: Wireless Debugging -> Pair device with pairing code
1. Note the IP address, port number and pairing code
1. Run `adb pair IP_ADDRESS:PORT`
1. When prompted, enter the pairing code

```bash
# The port number will change everytime "Wireless Debugging" is disabled-then-enabled.
adb connect tv-basement:PORT
```

### Force ADB server port to 5555

Newer TVs running Android 14+ bind their ADB server to random ports, which breaks integrations that expect the port to be static 5555. You can use [adb-auto-enable](https://github.com/mouldybread/adb-auto-enable) to force the ADB server port back to its previous static default of 5555.

### ADB usage

```bash
adb connect
adb shell

# List all activities/intents
pm list packages |\
  sed -e "s/package://" |\
  while read x; do cmd package resolve-activity --brief $x |\
  tail -n 1 |\
  grep -v "No activity found"; \
  done | sort

# Find activities from open windows
dumpsys window windows|grep -i activity

# Open Netflix app
am start -a android.intent.action.VIEW -n com.netflix.ninja/.MainActivity

# Open a network stream in VLC
am start -a android.intent.action.VIEW -d rtsp://example.com:8554/birdseye -n org.videolan.vlc/.gui.video.VideoPlayerActivity
```

## Android TV / Google TV

* [FLauncher](https://play.google.com/store/apps/details?id=me.efesser.flauncher&hl=en_CA)

### Projectivy Launcher

* [GitHub](https://github.com/spocky/miproja1)
* [Google Play](https://play.google.com/store/apps/details?id=com.spocky.projengmenu&hl=en_CA)
* [XDA Forums](https://xdaforums.com/t/app-android-tv-projectivy-launcher.4436549/)

#### Installation and setup

1. Install the [Projectivy app](https://play.google.com/store/apps/details?id=com.spocky.projengmenu&hl=en_CA) from Google Play Store
1. Enable [ADB Debugging](#adb-debugging) (Required by the "Launcher Manager" app)
1. Install the [Downloader app](https://play.google.com/store/apps/details?id=com.esaba.downloader&hl=en) from Google Play Store
1. Open the Downloader app and paste the URL: https://troypoint.com/troypoint-toolbox/
1. Scroll to the bottom and install "Launcher Manager"
1. Open Launcher Manager app and select the "Projectivy Launcher"

##### Launcher Manager workarounds

###### Recommended: Install adb-auto-enable

* [adb-auto-enable](https://github.com/mouldybread/adb-auto-enable)

##### Alternative: Manual ADB commands

If Launch Manager doesn't work (such as on a Hisense U88QG), then set Projectivy as the default launcher via the following adb commands:

```bash
adb connect IP_ADDRESS:PORT
adb shell
cmd package set-home-activity com.spocky.projengmenu/com.spocky.projengmenu.ui.home.MainActivity
pm disable-user --user 0 com.google.android.apps.tv.launcherx
pm disable-user --user 0 com.google.android.tungsten.setupwraith
```

... then reboot the TV. After rebooting, wifi may be disabled and you may need to re-enter the wifi password.

###### Alternative: Temporarily bind ADB to port 5555

You can temorarily bind the TV's ADB port to 5555, but thi swon't survive a reboot:

```bash
adb connect
adb tcpip 5555
```

... then run the "Launcher Manager" app, and it should be able to connect to ADB.

n.b. **Do not enable Projectivy in "Accessibility settings"**

Do not install enable "Projectivy Launcher" in Android's accessibility settings as directed by Projectivy, because
doing so will trigger the following bug as noted in the first post on the [official Projectivy Launcher thread](https://xdaforums.com/t/app-android-tv-projectivy-launcher.4436549/#post-86794031) (see, also, this [post on Reddit](https://www.reddit.com/r/AndroidTV/comments/1bictvi/projectivity_launcher_and_soundbar_volume_issue/)):

> long press on volume buttons doesn't work on FengOs : there's a bug on FengOs -> as soon as an accessibility service is enabled (Projectivy Launcher, but also Button Mapper for example), the long press volume buttons doesn't work anymore.

The workaround is to disable "Projectivy Launcher" in Android's accessibility settings, which is fine as long as "Launcher Manager" is configured as described above.

### YouTube app alternatives

Name | Description
--- | ---
[iSponsorBlock](https://github.com/Galactic-Dev/iSponsorBlock)| A jailbreak tweak that implements the SponsorBlock API to skip sponsorships in YouTube videos
[NewPipe](https://github.com/TeamNewPipe/NewPipe/) | A libre lightweight streaming front-end for Android
[ReVanced](https://revanced.app) [/r/revancedapp/](https://www.reddit.com/r/revancedapp/) [microG (revanced fork)](https://github.com/revanced/gmscore) | YouTube app for Android with no adds, SponsorBlock integration, and video quality settings persistence
[SmartTube GitHub](https://github.com/yuliskov/SmartTube) | An advanced player for set-top boxes and tvs running Android OS 

#### SmartTube

1. Install the [Downloader app by AFTVnews](https://www.aftvnews.com/downloader/)
1. Open the Downloader app and paste the URL: https://kutt.it/stn_beta
1. Follow the prompts to install [SmartTube](https://github.com/yuliskov/SmartTube)

### TV Apps

To launch apps via Home Assitant, configure a dashboard button:

```
# For Android 12, using media_player.play_media
- type: button
  icon: mdi:youtube
  name: YouTube
  tap_action:
    action: perform-action
    perform_action: media_player.play_media
    data:
      media_content_id: YouTube
      media_content_type: app
    target:
      entity_id: media_player.basement_tv

# For Android 14, using remote.turn_on
- type: button
  icon: mdi:youtube
  name: YouTube
  tap_action:
    action: perform-action
    perform_action: remote.turn_on
    data:
      activity: "https://www.youtube.com"
    target:
      entity_id: remote.basement_tv_remote

# Sometimes the URL won't work, but the package name will.
# The package name is the part of the intent before the forward slash.
# e.g. The package name is "com.google.android.youtube.tv" in the intent "com.google.android.youtube.tv/com.google.android.apps.youtube.tv.activity.ShellActivity"
- type: button
  icon: mdi:music-circle
  name: YouTube Music
  tap_action:
    action: perform-action
    perform_action: remote.turn_on
    data:
      activity: "com.google.android.youtube.tvmusic"
    target:
      entity_id: remote.basement_tv_remote
```

App | Intent (Android 12) | Activity (Android 14)
--- | --- | ---
AppleTV | com.apple.atve.sony.appletv/com.apple.atve.sony.appletv.MainActivity | https://tv.apple.com
CBC Gem | ca.cbc.android.cbctv/tv.tou.android.home.views.activities.MainActivityTv | https://gem.cbc.ca
CraveTV | ca.bellmedia.cravetv/axis.androidtv.sdk.app.MainActivity | https://www.crave.ca
Disney+ | com.disney.disneyplus/com.bamtechmedia.dominguez.main.MainActivity | https://www.disneyplus.com
NetFlix | com.netflix.ninja/.MainActivity | netflix://
Prime Video | com.amazon.amazonvideo.livingroom/com.amazon.ignition.IgnitionActivity | https://app.primevideo.com
SmartTube | com.liskovsoft.smarttubetv.beta/com.liskovsoft.smartyoutubetv2.tv.ui.main.SplashActivity | https://www.youtube.com
VLC | org.videolan.vlc/.StartActivity | vlc://
YouTube | com.google.android.youtube.tv/com.google.android.apps.youtube.tv.activity.ShellActivity | https://www.youtube.com
YouTube Music | com.google.android.youtube.tvmusic/com.google.android.apps.youtube.tvmusic.activity.MainActivity | https://www.youtube.com/music
