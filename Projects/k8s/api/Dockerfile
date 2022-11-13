FROM golang:1.16-alpine AS build

WORKDIR /app

COPY go.mod ./
COPY go.sum ./

RUN go mod download

COPY *.go ./

RUN CGO_ENABLED=0 go build -o /docker-go-app

FROM gcr.io/distroless/base-debian10

WORKDIR /
COPY --from=build /docker-go-app /docker-go-app

EXPOSE 8080

USER nonroot:nonroot

ENTRYPOINT ["/docker-go-app"]
