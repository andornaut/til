# Android

## ADB

* [ADB tips and tricks](https://www.xda-developers.com/adb-tips-tricks/)
* [HomeAssistant Android Debug Bridge setup](https://www.home-assistant.io/integrations/androidtv/#adb-setup)
* [Intents](https://gist.github.com/mcfrojd/9e6875e1db5c089b1e3ddeb7dba0f304)

1. From the Android TV device: Navigate to Settings > About
1. Scroll down to the bottom and click on "Build" and until you see the message "You are now a developer!"
1. Navigate to Settings > Developer options
1. Enable "ADB debugging"
 
```
adb connect tv-livingroom:5555
# The TV will prompt to authorize the connection. Select "always allow".

adb shell

# List all activities/intents
pm list packages |\
  sed -e "s/package://" |\
  while read x; do cmd package resolve-activity --brief $x |\
  tail -n 1 |\
  grep -v "No activity found"; \
  done

# Find activities from open windows
dumpsys window windows|grep -i activity

# Open Netflix app
am start -a android.intent.action.VIEW -n com.netflix.ninja/.MainActivity

# Open a network stream in VLC
am start -a android.intent.action.VIEW -d rtsp://example.com:8554/birdseye -n org.videolan.vlc/.gui.video.VideoPlayerActivity
```

### Apps 

App | Intent
--- | ---
AppleTV | com.apple.atve.sony.appletv/com.apple.atve.sony.appletv.MainActivity
CBC Gem | ca.cbc.android.cbctv/tv.tou.android.home.views.activities.MainActivityTv
CraveTV | ca.bellmedia.cravetv/axis.androidtv.sdk.app.MainActivity
Disney+ | com.disney.disneyplus/com.bamtechmedia.dominguez.main.MainActivity
NetFlix | com.netflix.ninja/.MainActivity
Prime Video | com.amazon.amazonvideo.livingroom/com.amazon.ignition.IgnitionActivity
VLC | org.videolan.vlc/.StartActivity
YouTube | com.google.android.youtube.tv/com.google.android.apps.youtube.tv.activity.ShellActivity
YouTube Kids | com.google.android.youtube.tvkids/com.google.android.apps.youtube.tvkids.activity.MainActivity 
YouTube Music | com.google.android.youtube.tvmusic/com.google.android.apps.youtube.tvmusic.activity.MainActivity
