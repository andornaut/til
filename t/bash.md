# BASH

## Command combination operator

```
[[ -f "/spoon" ]] || { echo "There is no spoon" ; exit 1; }
```

## Here Documents

[Examples](http://stackoverflow.com/a/21549836)

The format of here-documents is:

```
  <<[-]word
	  here-document
  delimiter
```
If word is unquoted, all lines of the here-document are subjected to parameter expansion, command substitution, and arithmetic expansion. In the latter case, the character sequence \<newline> is ignored, and \ must be used to quote the characters \, $, and `.

If the redirection operator is <<-, then all leading tab characters are stripped from input lines and the line containing delimiter. This allows here-documents within shell scripts to be indented in a natural fashion.

## Run on exit (trap)

[Wiki](http://mywiki.wooledge.org/SignalTrap)

```
cleanup() {
  echo 'cleanup'
}

trap 'cleanup' EXIT
```
