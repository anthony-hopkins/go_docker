FROM golang:alpine3.17

RUN apk update && apk add mysql-client && mkdir /<APP>

COPY <APP>.go /<APP>/
WORKDIR /<APP>