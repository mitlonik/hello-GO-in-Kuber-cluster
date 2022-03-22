# syntax=docker/dockerfile:1

##
## Build
##
FROM golang:1.18-buster as builder
WORKDIR /goapp
COPY app/* ./
RUN go mod download
## Build the program from source into hello-go file
RUN  CGO_ENABLED=0  go build -o /hello-go



##
## Deploy
##
FROM alpine:3.14
WORKDIR /
COPY --from=builder /hello-go /hello-go
EXPOSE 8080

HEALTHCHECK --interval=5s --timeout=10s --retries=3 CMD curl -sS 127.0.0.1:8080 || exit 1

ENTRYPOINT ["/hello-go"]