FROM golang:alpine

MAINTAINER Enieber Cunha<eniebercunha@gmail.com>

ENV GIN_MODE=release
ENV PORT=8080

WORKDIR /go/src/go-docker-dev.to

COPY src /go/src/go-docker-dev.to/src
COPY templates /go/src/go-docker-dev.to/templates

RUN apk add --no-cache sqlite~=3.32.1-r0

COPY dependencies /go/src #if you don't want to pull dependencies from git 

RUN go build go-docker-dev.to/src/app

EXPOSE $PORT

ENTRYPOINT ["./app"]

