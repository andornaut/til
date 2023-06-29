# Make

## Pass all args to target
[StackOverflow](http://stackoverflow.com/a/6273809)
```
action:
        @echo action $(filter-out $@,$(MAKECMDGOALS))

%:
    @:
```

> ``filter-out`` is a function that removes some elements from a list. So ``$(filter-out bar, foo bar baz)`` returns ``foo baz``

> ``$@`` is an automatic variable for the name of the target of the rule, in this case "action"

> ``%:`` is a rule which matches any task name  

> ``@:`` is a no-op recipe
