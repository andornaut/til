# JetBrains IDEs

## Fixes and Customisations

Fix [focus stealing bug](https://github.com/baskerville/bspwm/issues/841):

1. Help > Edit Custom Properties
1. Add: `suppress.focus.stealing=false`

Switch to default JDK to prevent menu dialogs from being displayed as floating windows in BSPWM.

1. CTRL+SHIFT+A
1. Search for "Switch Boot JDK"
1. Select the system default JDK

ENTER in the Find-Popup performs a full search in the docked bottom window, which is the equivalent of clicking on Open in Find Window.

1. CTRL+SHIFT+A
1. Enter "Registry"
1. Set `ide.find.enter.as.ok=true`

## External Tools

prettier-eslint

1. CTRL+SHIFT+A
1. Search for "External Tools" (Settings)
1. Program: `./node_modules/.bin/prettier-eslint` Arguments: `--write "$FilePathRelativeToProjectRoot$"`

## Shortcuts

Keys | Description
--- | ---
F2, Shift+F2 | Navigate to next/previous error
CTRL+SHIFT+A | Search for action or option name
