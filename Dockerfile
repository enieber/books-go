FROM golang:alpine

MAINTAINER Enieber Cunha<eniebercunha@gmail.com>

ENV GIN_MODE=release
ENV PORT=8080

WORKDIR /go/src/app

COPY pkg /go/src/app/pkg
COPY docs /go/src/app/docs
COPY main.go /go/src/app/main.go
COPY go.mod /go/src/app/go.mod
COPY go.sum /go/src/app/go.sum


RUN apk add --no-cache sqlite

RUN go build /go/src/app

EXPOSE $PORT

ENTRYPOINT ["./app/store"]

