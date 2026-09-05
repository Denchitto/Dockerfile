FROM golang:1.22-alpine AS builder
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download && go mod verify
COPY . ./
RUN go build -o ./bin/main .

FROM alpine:latest AS application
WORKDIR /app
COPY --from=builder /app/bin/ ./
ENTRYPOINT [ "./main" ]