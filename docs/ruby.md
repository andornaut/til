# Ruby

* [./JetBrains IDEs](./jetbrains-ides.md)
* [./Rails](./rails.md)
* [./Software Engineering](./software-engineering.md)

## Books

* [99 Bottles of OOP](https://sandimetz.com/99bottles)
* [Agile Web Development with Rails 7](https://pragprog.com/titles/rails7/agile-web-development-with-rails-7/)
* [Beginning Ruby 3 - From Beginner to Pro](https://link.springer.com/book/10.1007/978-1-4842-6324-2)
* [Metaprogramming Ruby 2](https://pragprog.com/titles/ppmetr2/metaprogramming-ruby-2/)
* [Practical Object-Oriented Design - An Agile Primer Using Ruby (POODR)](https://www.poodr.com/)
* [Programming Ruby 1.9 & 2.0](https://pragprog.com/titles/ruby4/programming-ruby-1-9-2-0-4th-edition/)
* [Refactoring Ruby Edition](https://martinfowler.com/books/refactoringRubyEd.html)

## Articles and blogs

* [New language features since version 2.0 (2013)](https://rubyreferences.github.io/rubychanges/evolution.html)
* [The Practical Effects of the GVL on Scaling in Ruby](https://www.speedshop.co/2020/05/11/the-ruby-gvl-and-scaling.html)
* [To Thread or Not to Thread: An In-Depth Look at Ruby’s Execution Models](https://shopify.engineering/ruby-execution-models)

## Newsletters

* [Ruby Weekly](https://rubyweekly.com/) - A free, once–weekly e-mail round-up of Ruby news and articles

## Getting started

### Install Ruby on macOS

* [Enable auto-switching](https://github.com/postmodern/chruby#auto-switching)

```
brew install chruby
brew install ruby-install
ruby-install ruby
# >>> Successfully installed ruby 3.0.3 into ${HOME}/.rubies/ruby-3.0.3

chruby 3.0.3
echo ruby-3.0.3 > .ruby-version
```

## Gems - Frameworks and libraries

Name | Description
--- | ---
[chruby](https://github.com/postmodern/chruby)|Changes the current Ruby
[rubocop](https://github.com/rubocop/rubocop)|Static code analyzer and formatter
[ruby-install](https://github.com/postmodern/ruby-install)|Installs Ruby, JRuby, Rubinius, TruffleRuby or MRuby
[shadowenv](https://github.com/Shopify/shadowenv)|reversible directory-local environment variable manipulations
[sorbet](https://sorbet.org/)|fast, powerful type checker designed for Ruby

## IDEs

### Rubymine

* [Remote debugging](https://www.jetbrains.com/help/ruby/attaching-to-remote-process.html)
* [Spring](https://www.jetbrains.com/help/ruby/spring.html)

### Visual Studio Code

* [Debugging Ruby](https://dev.to/dnamsons/ruby-debugging-in-vscode-3bkj)
* [Shadowenv extension](https://github.com/Shopify/vscode-shadowenv)

## Testing

* [Assertions](http://docs.seattlerb.org/minitest/Minitest/Assertions.html)
* [minitest](https://github.com/seattlerb/minitest)
* [rspec](https://rspec.info/)
* [test-unit](https://test-unit.github.io/)
* [tutorial](https://dev.to/exampro/testunit-writing-test-code-in-ruby-part-1-of-3-44m2)

## Gems and bundler - package managment and dependencies

```
# Update one package
bundle lock --update=packwerk

# Remove all unused gems in your bundler directory.
bundle clean --force
```

## Debugging

```
$ pry
> Foo.instance_method(:method_symbol).source.display
```
