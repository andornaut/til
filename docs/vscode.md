# Visual Studio Code

* [Tips and tricks](https://code.visualstudio.com/docs/getstarted/tips-and-tricks)

## Keyboard shortcuts

* [Keybinding docs](https://code.visualstudio.com/docs/getstarted/keybindings)
* Keyboard shortcuts for [linux](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-linux.pdf) or [macOS](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-macos.pdf)

Linux|macOS|Description
---|---|---
Ctrl+p|⌘p|Quick Open, Go to File
Ctrl+Shift+p|⌘⇧P|Show Command Palette
⌃`|⌃`|Show integrated terminal
|Ctrl+k Ctrl+c|⌘k ⌘c|Add line comment (cord shortcuts)
|Ctrl+k Ctrl+u|⌘k ⌘u|Remove line comment (cord shortcuts)
||⌥⇧A|Toggle block comment
||⌘⇧O|Go to Symbol
||⌘⇧E|Show Explorer / Toggle focus
||⌘⇧F|Show Search
||⌘⇧U|Show Output panel
Ctrl+Shift+Y||Show debug console
||⌘⇧H|Replace in files
Ctrl+Shift+L|⌘⇧L|Select all occurrences of the current selection
F9|F9|Toggle breakpoint
F5|F5|Start/Continue
F1|F1|Step into
Shift+F11|⇧F11|Step out
F10|F10|Step over
Shift+F5|⇧F5|Stop

## Add CLI executable on macOS

1. Launch VS Code.
1. Open the Command Palette (⇧⌘P)
1. Type 'shell command' and then select: Shell Command: Install 'code' command in PATH

This will install an script in `/usr/local/bin/code` that can be used to open Code.

You can then create handy aliases, such as:

```
$ grep code ~/.bash_aliases
alias scratch="code --new-window ${HOME}/scratch.md"
alias til="code --new-window ${HOME}/src/github.com/andornaut/til"
```

## Enable key repeating on macOS

* [Howto](https://github.com/VSCodeVim/Vim#mac)

```
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults delete -g ApplePressAndHoldEnabled # If necessary, reset global default
```

## Extensions

* [Live Share](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare-pack)
