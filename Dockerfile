FROM golang:1.10-alpine as builder

RUN apk add --no-cache git && \
  go get github.com/aktau/github-release && \
  rm -rf /go/src/github.com || true

CMD ["/go/bin/github-release"]

