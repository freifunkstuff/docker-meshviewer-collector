FROM golang:1.16-alpine as builder

RUN go get -v -u github.com/genofire/meshviewer-collector@45acc9a25f6d7a57c89309d657a346d7167c2df7

FROM alpine:3.14

COPY --from=builder /go/bin/meshviewer-collector /bin/meshviewer-collector

RUN apk add --update --no-cache bash

ADD entrypoint.sh /entrypoint.sh

VOLUME /data

CMD /entrypoint.sh
