# bash

* [./Software Engineering](./software-engineering.md)

## Books

* [Learning the bash Shell](https://www.oreilly.com/library/view/learning-the-bash/0596009658/)
* [The Shellcoder's Handbook - Discovering and Exploiting Security Holes](https://www.oreilly.com/library/view/the-shellcoders-handbook/9780470080238/)
* [Unix Power Tools](https://www.oreilly.com/library/view/unix-power-tools/0596003307/)

## Strict mode

```bash
set -euo pipefail
```

> ``-e`` exit as soon as a command fails, rather than carrying on with the rest of the script
>
> ``-u`` treat the expansion of an unset variable as an error
>
> ``-o pipefail`` a pipeline's status is that of the last command to fail, not that of the last command; without it ``false | true`` succeeds

n.b. ``-e`` is not applied to a command whose status is already being tested, so ``if ! foo; then`` and ``foo || handle`` still work as written.

## Command combination operator

```json
[[ -f "/spoon" ]] || { echo "There is no spoon" ; exit 1; }
```

## Here Documents

[Examples](https://stackoverflow.com/a/21549836)

The format of here-documents is:

```text
  <<[-]word
   here-document
  delimiter
```

If word is unquoted, all lines of the here-document are subjected to parameter expansion, command substitution, and arithmetic expansion. In the latter case, the character sequence \<newline> is ignored, and \ must be used to quote the characters \, $, and `.

If the redirection operator is <<-, then all leading tab characters are stripped from input lines and the line containing delimiter. This allows here-documents within shell scripts to be indented in a natural fashion.

## Run on exit (trap)

[Wiki](https://mywiki.wooledge.org/SignalTrap)

```bash
cleanup() {
  echo 'cleanup'
}

trap 'cleanup' EXIT
```
