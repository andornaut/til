# Android

* [APK Mirror](https://www.apkmirror.com/)

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
```bash
adb connect tv-livingroom:5555
# The TV will prompt to authorize the connection. Select "always allow".
```

### ADB usage
```bash
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

Do not install enable "Projectivy Launcher" in Android's accessibility settings as directed by Projectivy, because
doing so will trigger the following bug as noted in the first post on the [official Projectivy Launcher thread](https://xdaforums.com/t/app-android-tv-projectivy-launcher.4436549/#post-86794031) (see, also, this [post on Reddit](https://www.reddit.com/r/AndroidTV/comments/1bictvi/projectivity_launcher_and_soundbar_volume_issue/)):

> long press on volume buttons doesn't work on FengOs : there's a bug on FengOs -> as soon as an accessibility service is enabled (Projectivy Launcher, but also Button Mapper for example), the long press volume buttons doesn't work anymore.

The workaround is to disable "Projectivy Launcher" in Android's accessibility settings, which is fine as long as "Launcher Manager" is configured as described above.

### YouTube app alternatives

Name | Description
--- | ---
[iSponsorBlock](https://github.com/Galactic-Dev/iSponsorBlock)| A jailbreak tweak that implements the SponsorBlock API to skip sponsorships in YouTube videos
[NewPipe](https://github.com/TeamNewPipe/NewPipe/) | A libre lightweight streaming front-end for Android
[ReVanced](https://revanced.app) [/r/revancedapp/](https://www.reddit.com/r/revancedapp/) | YouTube app for Android with no adds, SponsorBlock integration, and video quality settings persistence
[SmartTube GitHub](https://github.com/yuliskov/SmartTube) | An advanced player for set-top boxes and tvs running Android OS 

#### SmartTube

1. Install the [Downloader app by AFTVnews](https://www.aftvnews.com/downloader/)
1. Open the Downloader app and paste the URL: https://kutt.it/stn_beta
1. Follow the prompts to install [SmartTube](https://github.com/yuliskov/SmartTube)

### TV Apps

App | Intent
--- | ---
AppleTV | com.apple.atve.sony.appletv/com.apple.atve.sony.appletv.MainActivity
CBC Gem | ca.cbc.android.cbctv/tv.tou.android.home.views.activities.MainActivityTv
CraveTV | ca.bellmedia.cravetv/axis.androidtv.sdk.app.MainActivity
Disney+ | com.disney.disneyplus/com.bamtechmedia.dominguez.main.MainActivity
NetFlix | com.netflix.ninja/.MainActivity
Prime Video | com.amazon.amazonvideo.livingroom/com.amazon.ignition.IgnitionActivity
SmartTube | com.liskovsoft.smarttubetv.beta/com.liskovsoft.smartyoutubetv2.tv.ui.main.SplashActivity
VLC | org.videolan.vlc/.StartActivity
YouTube | com.google.android.youtube.tv/com.google.android.apps.youtube.tv.activity.ShellActivity
YouTube Kids | com.google.android.youtube.tvkids/com.google.android.apps.youtube.tvkids.activity.MainActivity 
YouTube Music | com.google.android.youtube.tvmusic/com.google.android.apps.youtube.tvmusic.activity.MainActivity
