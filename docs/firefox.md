# Firefox

## Misc. about:config settings

* [Say “goodbye” to cookies and cookie banners with vanilla Firefox](https://beehaw.org/post/908043)
* [How do I disable middle mouse button click paste?](https://askubuntu.com/a/97309)

```
browser.bookmarks.showMobileBookmarks: false
browser.toolbars.bookmarks.showOtherBookmarks: false

# Auto-reject cookie banner prompts
cookiebanners.service.mode: 1
cookiebanners.service.mode.privateBrowsing: 1

# Don't paste on middle-click
middlemouse.paste false
```

## Credit card autofill / autocomplete

* [Mozilla wiki](https://wiki.mozilla.org/Firefox/Features/Form_Autofill#Release)
* [Mozilla support](https://support.mozilla.org/en-US/kb/credit-card-autofill)
* [Reddit](https://www.reddit.com/r/firefox/comments/kcdacw/no_credit_card_auto_fill_option_already_tried/)

about:config settings:
```
extensions.formautofill.available: true
extensions.formautofill.creditCards.available: true
extensions.formautofill.creditCards.enabled: true
extensions.formautofill.supportedCountries: 'US,CA'
```

## Right-click bug with BSPWM

Right-click automatically selects the option under the mouse when the mouse button is released. This makes it difficult to use the right-click context menu. This bug only occurs in certain window managers such as BSPWM or i3 when the firefox window is not fullscreen.

**about:config workaround:**

```
ui.context_menus.after_mouseup: true
```

* [bugzilla issue](https://bugzilla.mozilla.org/show_bug.cgi?id=1472544)
* [reddit discussion](https://www.reddit.com/r/i3wm/comments/88k0yt/right_mouse_btn_instantly_clicks_first_option_in/) 

## Add-ons (browser extensions) in Firefox Nightly on Android

- [Expanded extension support in Firefox for Android Nightly](https://blog.mozilla.org/addons/2020/09/29/expanded-extension-support-in-firefox-for-android-nightly/)
- [Firefox add-ons](https://addons.mozilla.org/en-CA/firefox/)
- [Andornaut's add-on collection](https://addons.mozilla.org/en-CA/firefox/collections/)

In Firefox Nightly for Android:

1. Settings -> About Firefox Nightly
1. Tap the logo 5 times
1. Back in Settings, click Custom Add-on collection
1. Enter eg. Collection owner: 16021357, Collection name: android

## Bypass HSTS HTTPS/TLS certificate error

1. Quit Firefox
1. Edit `~/.mozilla/firefox/${profileName}/SiteSecurityServiceState.txt`
1. Delete lines that begin with the domain in question
1. Open Firefox and navigate to the site. You can now bypass the security warning by clicking a button.
