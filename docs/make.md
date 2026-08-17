# Make

## Pass all args to target

[StackOverflow](http://stackoverflow.com/a/6273809)

```makefile
action:
 @echo action $(filter-out $@,$(MAKECMDGOALS))

%:
 @:
```

> ``filter-out`` is a function that removes some elements from a list. So ``$(filter-out bar, foo bar baz)`` returns ``foo baz``
>
> ``$@`` is an automatic variable for the name of the target of the rule, in this case "action"
>
> ``%:`` is a rule which matches any task name  
>
> ``@:`` is a no-op recipe

n.b. Recipe lines must be indented with a TAB, not spaces

## Useful flags

```bash
# Print the recipes without running them
make -n ${target}

# Run independent recipes in parallel
make -j$(nproc)

# Print make's internal database - every variable, rule and implicit rule - without building
make -p -n
```

## .PHONY

```makefile
.PHONY: build test clean
```

> A target that isn't a file must be declared ``.PHONY``, otherwise make treats a file of the same
> name as the target's output and skips the recipe as "up to date"
