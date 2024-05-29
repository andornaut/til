# tmux

* [Manual](https://man.openbsd.org/tmux)
* [Official Wiki](https://github.com/tmux/tmux/wiki/)
* [Arch wiki](https://wiki.archlinux.org/index.php/tmux)
* [Display formats](https://github.com/tmux/tmux/wiki/Formats)
* [Example tmux.conf](https://github.com/andornaut/dotfiles/blob/master/%24HOME/.tmux.conf)
* Copy/paste in [Linux](http://www.rushiagr.com/blog/2016/06/16/everything-you-need-to-know-about-tmux-copy-pasting-ubuntu/#comment-4242059466) and
[macOS (iTerm2)](https://stackoverflow.com/a/19843650)

## Books

* [tmux 2 - Productive Mouse-Free Development](https://pragprog.com/titles/bhtmux2/tmux-2/)

## Common commands

Command|Description
---|---
`bind [-n\|-r]`|Bind a keyboard shortcut [without prefix\|repeatable]
`unbind [shortcut]`|Unbind a keyboard shortcut
`kill-[pane\|server\|session\|window]`|Close
`movew -r`|Re-number all windows
`new-window`|[Create](https://github.com/tmux/tmux/wiki/Getting-Started#creating-new-windows) and switch to a new window
`rename-window -n $name`|Rename current window
`set-option [-p\|-w\|-s\|-g]`|Set a [pane|window|server] option, otherwise a session option. If -g is given, the global session or window option is set. tmux will infer the type from the option name, assuming -w for pane options. (alias: `set`)
`set-option -u`|Unset a non-global option to apply the global option (alias: `set -u`)
`show [-s\|-g\|-w]`|[Display options](https://superuser.com/a/759156)
`split-window`|[Split](https://github.com/tmux/tmux/wiki/Getting-Started#splitting-the-window) the current window

## Keyboard shortcuts

Shortcut|Description
---|---
`C-b ?`|Help; list all keybindings
`C-b d`|Detach
`C-b c` or `C-b t`|Create a window
`C-b C-b d`|[Detach inner tmux session](https://superuser.com/a/249671)
`C-b D`|List clients
`C-b [`|Enter copy/paste and [scroll mode](#scrolling)
`C-b ]`|Paste
`C-b 0-9`|Switch to window number
`C-b (`|Switch to the previous session
`C-b )`|Switch to the next session
`C-b p`|Switch to the previous window
`C-b n`|Switch to the next window
`C-b q`|Print pane numbers
`C-b Up\|Down\|Left\|Right`|Change pane focus
`C-b C-[Up\|Down\|Left\|Right]`|Resize current pane
`C-b Alt-1`|select-layout even-vertical
`C-b Alt-2`|select-layout even-vertical
`C-b %`|Split pane vertically
`C-b "`|Split pane horizontally
`C-b x`|Close the current pane
`C-b &`|Close the current window
`C-b ,`|Rename the current window
`C-b $`|Rename the current session
`C-b w`|Enter [tree mode](https://github.com/tmux/tmux/wiki/Getting-Started#choosing-sessions-windows-and-panes). `x` to kill a pane/window/session
`C-b :`|Command line
`C-c`|Cancel

### Scrolling

* [Super User](https://superuser.com/a/209608)

Shortcut|Description
---|---
`C-b`|Enter scroll mode
`C-u`|Half page up
`C-d`|Half page down
`C-b C-b`|Page up
`C-f`|Page down

## Usage

```
tmux ls
tmux attach
tmux attach -t ${sessionName}

# Attach to an existing session named "dev" if it exists, or create a new one if it does not
tmux new -As dev

# Start a new detached session named "dev"
tmux new -d -s dev

# Show current setting value, eg.
tmux show -s status-right

# Reload (and validate) configuration file
tmux source-file ~/.tmux.conf
```

## Troubleshooting

Problem: Meta key shortcuts do not work on macOS. Eg. `bind -n M-h select-pane -L`

Solution: Navigate to: iTerm2 > Profiles > Keys, then set "Left Option Key" and "Right Option Key" to "Esc+". n.b. [Be sure to update both left and right](https://groups.google.com/d/embed/msg/iterm2-discuss/s21SdO1uCcM/z_dJxLJFBAAJ).
