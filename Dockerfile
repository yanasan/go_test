FROM golang:1.20.12-alpine3.19

WORKDIR /app

ENV PORT 8080

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build -o main

CMD ["./main", "-port", "$PORT"]