# Vim

## Books

* [A Byte of Vim](https://github.com/swaroopch/byte-of-vim)

## Commands

Command | Description
--- | ---
`:bd` | [Close a buffer](https://stackoverflow.com/a/256208) without quitting vim, which is handy when editing multiple files
`:noh` | [Clear the current search highlight](https://stackoverflow.com/a/658478)
`:retab` | Replace all sequences of white-space containing a <Tab> with new strings of white-space using the new tabstop value given

## Tips

[Vim Tips Wiki](http://vim.wikia.com/wiki/Vim_Tips_Wiki)

```
# Trim trailing whitespace
:%s/\s\+$
```

## Key combinations

Scrolling window without moving the cursor

Keys | Descriptions
--- | ---
zz | move current line to the middle of the screen
zt | move current line to the top of the screen
zb | move current line to the bottom of the screen
`<C-V><Tab>` | Explicitly insert a tab character (while in insert mode)
