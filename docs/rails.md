# Rails

* [./Ruby](./ruby.md)

## Common commands

```
rails db:migrate
rails routes

# Run a script in the context of a rails app
rails runner script.rb
```

## Debugging

* [web-console](https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-web-console-gem), [GitHub](https://github.com/rails/web-console)

## Testing

```
# Run a test script
$ rails test --verbose test/test_pr.rb

# Run a test script in Rails.env='development' instead of 'test'
$ cat <<-EOF > test.rb
class TestFoo < MiniTest::Test
  def test_bar
    assert false
  end
end
MiniTest.autorun
EOF
$ rails runner test.rb

# Run a test from stdin in Rails.env='development' instead of 'test'
$ cat <<-EOF | rails runner -
class TestFoo < MiniTest::Test
  def test_bar
    assert false
  end
end
MiniTest.autorun
EOF
```
