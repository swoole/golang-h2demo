# Copyright 2018 The Go Authors. All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.

FROM ubuntu:latest
LABEL maintainer "rango@swoole.com"

RUN mkdir /go
COPY h2demo /go/h2demo
COPY . /
CMD ["/go/h2demo", "-https_addr", "0.0.0.0:4430"]
