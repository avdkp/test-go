FROM golang:1.20
WORKDIR /app
# COPY go.mod go.sum ./
COPY . .
# RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ./hello

EXPOSE 8080

# Run
CMD ["./hello"]

# _RHw@Y5%xKC3ij7