# compiler and everything you need for Golang. Image with name "builder"
FROM golang:1.16 as builder

# Let's build and run the application in this directory
WORKDIR /app

# Copy the program code to the container file system
COPY main.go .

# Build the program from source into hello-go file
RUN go build -o hello-go main.go

# base lite image
FROM alpine:3.14

# Let's build and run the application in the same directory
WORKDIR /app

# Let's copy the assembled binary code from the first stage
COPY --from=builder /app/hello-go .

# Run the program when starting the container
CMD ["/app/hello-go"]