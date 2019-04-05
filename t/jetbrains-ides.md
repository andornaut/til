# JetBrains IDEs

## Fixes and Customisations

Fix [focus stealing bug](https://github.com/baskerville/bspwm/issues/841):

1. Help > Edit Custom Properties
1. Add: `suppress.focus.stealing=false`

Disable [Find in path popup](https://www.jetbrains.com/help/idea/2017.1/find-and-replace-in-path.html) (use old dialog instead):

1. CTRL+SHIFT+A
1. Search for "Registry"
1. Disable `ide.find.as.popup`

Switch to default JDK to prevent menu dialogs from being displayed as floating windows in BSPWM.

1. CTRL+SHIFT+A
1. Search for "Switch Boot JDK"
1. Select the system default JDK

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
