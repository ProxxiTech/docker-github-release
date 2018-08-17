FROM golang:1.10-alpine as builder

RUN apk add --no-cache git && \
  go get github.com/aktau/github-release && \
  install -d /release && \
  rm -rf /go/src/github.com || true

COPY bin/* /bin

VOLUME [ "/release" ]

CMD ["/go/bin/github-release"]

