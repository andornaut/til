# macOS

## Initial setup

* [Install NVM on macOS](./javascript.md#install-nvm-on-macos)
* [Install Ruby on macOS](./ruby.md#install-ruby-on-macos)

```
# n.b. svn is needed to install the font-source-code-pro cask
brew install \
    bash \
    coreutils \
    curl \
    jq \
    nmap \
    svn \
    tmux \
    watch \
    wget \
    vim

# Fonts
brew tap homebrew/cask-fonts
brew install \
  --cask font-source-code-pro \
  font-droid-sans-mono-nerd-font \
  font-inconsolata \
  font-source-code-pro \
  font-ubuntu

# Change shell to Bash
echo '/opt/homebrew/bin/bash' | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/bash
```

Install these applications:

* [Alacritty](https://github.com/alacritty/alacritty)
* [Flameshot](https://flameshot.org) (Paid alternative to [Monosnap](https://monosnap.com/))
* [Kap](https://github.com/wulkano/Kap) - Screen recorder
* [Karabiner Elements](https://karabiner-elements.pqrs.org/)
* [Rectangle](https://rectangleapp.com/) (Paid version: [Hookshot](https://hookshot.app/))
* [SketchyBar](https://github.com/FelixKratz/SketchyBar) - Status bar
* [skhd](https://github.com/koekeishiya/skhd)
* [Yabai](https://github.com/koekeishiya/yabai) - Tiling window manager

```
brew install --appdir ~/Applications/ --no-quarantine alacritty flameshot karabiner-elements rectangle
```

Add CLI launcher scripts:

`~/.local/bin/alacritty`
```
#!/usr/bin/env bash
open --new ~/Applications/Alacritty.app --args $@
```
`~/.local/bin/code`
```
#!/usr/bin/env bash
open --new -a 'Visual Studio Code' --args $@
```

[Enable font smoothing](https://pezcoder.medium.com/how-i-migrated-from-iterm-to-alacritty-c50a04705f95#fa82):
```
defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO
defaults -currentHost write -globalDomain AppleFontSmoothing -int 2
```

[Show all files in the Finder](https://macpaw.com/how-to/access-opt-folder-on-mac)
```
defaults write com.apple.Finder AppleShowAllFiles YES
```

## Keyboard Shortcuts

[All shortcuts](https://support.apple.com/en-ca/HT201236)

Meta keys:

- Command ⌘
- Shift ⇧
- Option (Alt) ⌥
- Control (Ctrl) ⌃
- Caps Lock ⇪
- Fn

| Key combination | Description |
| --- | --- |
| Control Command Space | Open [Emoji Viewer](https://support.apple.com/en-ca/guide/mac-help/mchlp1560/mac) |
| Command Shift . | [Show hidden files](https://osxdaily.com/2009/02/25/show-hidden-files-in-os-x/) |
| Command n | New window |
| Control Command q | Lock screen |
| / | [Go to a directory](https://support.apple.com/en-ca/guide/mac-help/mchlp1236/mac) when focussed on a Finder window |

Rebind these shorcuts in System Settings > Keyboard > Shortcuts > Mission Control:

| Key combination | Description |
| --- | --- |
| F3 | Mission Control |
| ⌘ ← | Mission Control: Move left a space |
| ⌘ → | Mission Control: Move right a space |

Add a "[Paste and Match Style](https://scottswezey.com/always-paste-without-formatting-macos/)" shortcut in System Settings > Keyboards > Shortcuts > App Shortcuts

Field|Value
---|---
Application | All Applications
Menu Title | Paste and Match Style
Keyboard Shortcut | `⇧⌘V`

## Customizations

* [ChangeMenuBarColor](https://github.com/igorkulman/ChangeMenuBarColor)
* [HazeOver](https://hazeover.com/) - Dim inactive windows

### Reduce menu (top bar) transparency

1. Navigate to: Accessibility > Display > Display (tab)
1. Enable: Reduce transparency

### Dock

* [uBar](https://brawersoftware.com/products/ubar) - Dock alternative
* [How to hide the dock](https://apple.stackexchange.com/a/298826)

```
# Hide Dock
defaults write com.apple.dock autohide -bool true && killall Dock
defaults write com.apple.dock autohide-delay -float 1000 && killall Dock
defaults write com.apple.dock no-bouncing -bool TRUE && killall Dock

# Restore Dock
defaults write com.apple.dock autohide -bool false && killall Dock
defaults delete com.apple.dock autohide-delay && killall Dock
defaults write com.apple.dock no-bouncing -bool FALSE && killall Dock
```

### Disable "Click wallpaper to reveal desktop"

1. Open "System Settings"
1. Search for "stage manager"
1. Set "Click wallpaper to reveal desktop" to "Only in Stage Manager"

### Disable command+h (hide window)

* [StackOverflow](https://superuser.com/a/1354665)

1. Install [Karabiner-elements](https://karabiner-elements.pqrs.org/)
1. Import and enable the [Prevent unintended command-h](https://ke-complex-modifications.pqrs.org/?q=Prevent%20unintended%20command-h) "complex modification rule"

## KVM

1. System Preferences -> Energy Saver -> Power Adapter
1. Enable: "Enable Power Nap while plugged into a power adapter"

### Fix flakiness

* Use [display_switch](https://github.com/haimgel/display-switch) to workaround flaky KVM switching.

```
$ cat ~/Library/Preferences/display-switch.ini
# Logs are in:
# $ tail -F ~/Library/Logs/display-switch/display-switch.log
# USB Devices:
# * 14b0:011e StarTech.com Ltd. USB 3.0 4 Port HUB
# * 1532:0e03 1532 Razer Kiyo
# The Genesys is the KVM. It is not added/removed when switching ports, so we must use another device such as the StarTech hub.
usb_device = "1532:0e03"
on_usb_connect = "DisplayPort1"
#on_usb_disconnect = "DisplayPort1"

$ launchctl load ~/Library/LaunchAgents/dev.haim.display-switch.daemon.plist

# Unload with:
# $ launchctl load ~/Library/LaunchAgents/dev.haim.display-switch.daemon.plist
```

* [Linux support](https://github.com/haimgel/display-switch/pull/22)

```
sudo apt install libudev-dev i2c-tools
sudo usermod ${USER} -aG i2c

# Save config to:
# ~/.config/display-switch/display-switch.ini
```

## Troubleshooting

### Increase maxfiles

* [Blog](https://docs.riak.com/riak/kv/latest/using/performance/open-files-limit/index.html#mac-os-x-el-capitan)
* [Facebook Watchman](https://facebook.github.io/watchman/docs/install.html#installing-on-os-x-via-homebrew)
* [StackOverflow](https://apple.stackexchange.com/a/366319)

```
$ echo 'ulimit -n 65536 104857' >> ~/.bashrc

$ cat <<-END >> /etc/sysctl.conf
kern.maxfiles=10485760
kern.maxfilesperproc=104857
END
```

### Bypass macOS app installation restrictions

* [gon - CLI library for macOS Notarization](https://github.com/mitchellh/gon)

```
xattr -d com.apple.quarantine /Applications/...app
```

### Fix OpenSSL errors

* [Bundler SSL Guide](https://bundler.io/guides/rubygems_tls_ssl_troubleshooting_guide.html#troubleshooting-certificate-errors)

```
curl -Lks 'https://git.io/rg-ssl' | ruby
brew info openssl
sudo cp /usr/local/etc/openssl\@1.1/cert.pem  /opt/local/etc/openssl/cert.pem
```

### Reinstall xcode

```
# Get Xcode version
xcode-select  --version

# Re-install Xcode CLI tools
sudo rm -rf /Library/Developer/CommandLineTools
sudo xcode-select --install
```

### Remove RODE Connect virtual audio devices

After installing [RODE Connect](https://rode.com/en/software/rodeconnect#module_19) - in order to upgrade RODE NT-USB Mini drivers - 3 new virtual audio devices are installed. To remove them:

1. Navigate to: `Macintosh HD > Library > Audio > Plug-ins > HAL`
2. Delete the "RODE ..." folder

### Prevent Google Meet from changing the input device volume level

* [Source](https://codeandframes.com/audio/how-to-stop-google-meet-to-change-microphone-volume.html)

1. Run `open -a 'Audio MIDI Setup'`
1. Click the "+" icon in the bottom-right
1. Click "Create Aggregate Device"
1. Add only your input device, eg. "RODE NT-USB Mini"
1. Option/Alt+click the sound icon in the macOS taskbar
1. Select the newly created Aggregate Device as the default input device

### Restart audio system

* [StackOverflow](https://superuser.com/a/1656587)

```
sudo launchctl kickstart -kp system/com.apple.audio.coreaudiod
```

### External monitor flickers

* [MacRumors](https://forums.macrumors.com/threads/variable-refresh-rate-freesync-gsync-flicker.2320463/)
* [Reddit](https://www.reddit.com/r/MacOS/comments/qg9qki/updated_to_monterey_monitor_is_flickering_help/)

If your monitor support Variable Refresh Rate (VRR), such as AMD FreeSync or nVidia Gsync,
then VRR will be enabled in System Preferences > Displays, which may cause flickering.
Even if disabled manually, rebooting or disconnecting/reconnecting the monitor will re-enable
the setting.

Workaround: Disable VRR in your monitor's OSD.

