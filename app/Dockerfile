# syntax=docker/dockerfile:1

##
## Build
##
FROM golang:1.18-buster as builder
WORKDIR /app

# Download necessary Go modules
COPY go.mod ./
# COPY go.sum ./
RUN go mod download

COPY main.go ./
# Build the program from source into hello-go file
RUN go build -o /hello-go



##
## Deploy
##
FROM alpine:3.14
WORKDIR /
COPY --from=builder /hello-go /hello-go
EXPOSE 8080
ENTRYPOINT ["/hello-go"]