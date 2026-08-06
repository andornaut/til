# Go

* [./Software Engineering](./software-engineering.md)

## Books

* [Cloud Native Go](https://www.oreilly.com/library/view/cloud-native-go/9781492076322/)
* [Concurrency in Go](https://www.oreilly.com/library/view/concurrency-in-go/9781491941294/)
* [The Go Programming Language](https://www.gopl.io/)

## Common commands

```
$ go mod init github.com/andornaut/${project}
$ go mod tidy

$ go build ./...
$ go run .
$ go test ./...

# Verbose, with coverage, and matching a single test
$ go test -v -cover ./...
$ go test -run TestFoo ./...

# Format and report suspicious constructs
$ gofmt -l -w .
$ go vet ./...
```

## Vendor

n.b. Superseded by [Go modules](https://go.dev/ref/mod#vendoring) (`go mod vendor`); `govendor` is archived.

[FAQ](https://github.com/kardianos/govendor/blob/master/doc/faq.md)
```
# Install globally
$ go get -u github.com/kardianos/govendor
```
