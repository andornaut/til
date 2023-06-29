# iTerm2

## Copy / Paste

[Allow terminal programs to access the clipboard](https://github.com/neovim/neovim/issues/3702#issuecomment-157908755)

1. Preferences -> General -> Selection
1. Enable (check) the following:
  * Copy to pasteboard on selection
  * Applications in terminal may access clipboard

## Unlimited scrollback buffer

* [StackOverflow](https://stackoverflow.com/a/27616555)

1. File -> Preferences -> Profiles -> Terminal
1. Check "Unlimited scrollback"

## Avoid accidentally closing iterm2

[Disable ⌘W in Terminal](https://apple.stackexchange.com/questions/44412/disable-command-w-in-the-terminal#44415):

1. System Preferences (macOS) > Keyboard > Shortcuts > App Shortcuts
1. Click "+" to add a new shortcut
1. In "Application", select: iTerm.app
1. In "Menu Title", enter: Close
1. In "Keyboard Shortcut", type: ⌘ Control w

Prompt to close iterm2 if a process is running:

1. iterm.app > Preferences > Profile > Session
1. In the "Prompt before closing?" option, select:  **If there are jobs besides**
