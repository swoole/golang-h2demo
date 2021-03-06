Build docker image
=====
```shell
go build
docker build -t phpswoole/golang-h2demo
```


h2demo
=====
https://go.googlesource.com/net/+/refs/heads/master/http2/h2demo/

This is a demo webserver that shows off Go's HTTP/2 support.

It runs at https://http2.golang.org/ so people can hit our
implementation with their HTTP/2 clients, etc. We intentionally do not
run it behind any other HTTP implementation so clients (including
people demonstrating attacks, etc) can hit our server directly. It
just runs behind a TCP load balancer.

When running locally, you'll need to click through TLS cert warnings.
The dev cert was initially made like:

#### Make CA:
```
$ openssl genrsa -out rootCA.key 2048
$ openssl req -x509 -new -nodes -key rootCA.key -days 1024 -out rootCA.pem
```

#### Make cert:
```
$ openssl genrsa -out server.key 2048
$ openssl req -new -key server.key -out server.csr
$ openssl x509 -req -in server.csr -CA rootCA.pem -CAkey rootCA.key -CAcreateserial -out server.crt -days 500
```
