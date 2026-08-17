# JSON

## Formatting

```bash
$ echo '{"foo": "lorem", "bar": "ipsum"}' | python -m json.tool

# or

$ sudo apt-get install -qy jq
$ echo '{"foo": "lorem", "bar": "ipsum"}' | jq
```

## Querying with jq

* [Manual](https://jqlang.org/manual/)

```bash
$ echo '{"foo": "lorem", "bar": {"baz": "ipsum"}}' | jq '.bar.baz'
"ipsum"

# -r prints strings without their quotes, which is what you want when piping to another command
$ echo '{"foo": "lorem"}' | jq -r '.foo'
lorem

# -c prints one compact line per result
$ echo '[{"a": 1}, {"a": 2}]' | jq -c '.[]'
{"a":1}
{"a":2}

# Filter an array
$ echo '[{"a": 1}, {"a": 2}]' | jq -c '.[] | select(.a > 1)'
{"a":2}

# Read from a file, and default a missing key rather than emitting null
$ jq -r '.foo // "unset"' example.json
```
