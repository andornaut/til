# wget

## Download recursively

- [StackOverflow](https://apple.stackexchange.com/questions/100570/getting-files-all-at-once-from-a-web-page-using-curl)

```bash
wget -r -np -k -nd -A mkv,avi http://example.com
```

> ``-r`` recurse, ``-np`` don't ascend to the parent directory, ``-k`` convert links for local viewing,
> ``-nd`` don't create a directory hierarchy, ``-A`` comma-separated list of accepted extensions
