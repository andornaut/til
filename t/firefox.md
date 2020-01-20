# Firefox

## Right-click bug with BSPWM

Right-click automatically selects the option under the mouse when the mouse button is released. This makes it difficult to use the right-click context menu. This bug only occurs in certain window managers such as BSPWM or i3 when the firefox window is not fullscreen.

### Workaround

In about:config set `ui.context_menus.after_mouseup: true`

* [bugzilla issue](https://bugzilla.mozilla.org/show_bug.cgi?id=1472544)
* [reddit discussion](https://www.reddit.com/r/i3wm/comments/88k0yt/right_mouse_btn_instantly_clicks_first_option_in/) 
