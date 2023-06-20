FROM golang:1.20
WORKDIR /app
# COPY go.mod go.sum ./
COPY hello ./
# RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux go build -o ./hello

EXPOSE 8080

# Run
CMD ["./hello"]