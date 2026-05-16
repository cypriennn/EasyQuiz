# Build

FROM golang:alpine AS builder

WORKDIR /app

COPY go.* ./

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -o /EasyQuiz main.go

# Run

FROM alpine:latest

WORKDIR /app

COPY --from=builder /EasyQuiz .
COPY --from=builder /app/quiz.json .
COPY --from=builder /app/templates ./templates
COPY --from=builder /app/static ./static

EXPOSE 8080

CMD ["./EasyQuiz"]
