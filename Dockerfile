# docker build -t shiori .
# docker run -d --rm --name shiori -p 8080:8080 -v $(pwd):/srv/shiori shiori
# docker run -d --name shiori -p 8080:8080 -v $(pwd):/srv/shiori --restart=unless-stopped  shiori
#  See https://serverfault.com/a/907154 clean and restart docker containers
# docker stop shiori

FROM golang:1.13-alpine as builder

RUN apk update && apk --no-cache add git build-base
RUN git clone https://github.com/go-shiori/shiori.git ; cd shiori ; go build
RUN pwd ; ls -al shiori

# ========== END OF BUILDER ========== #

FROM alpine:latest

RUN apk update && apk --no-cache add dumb-init ca-certificates
COPY --from=builder /go/shiori/shiori  /usr/local/bin/shiori

ENV SHIORI_DIR /srv/shiori/
EXPOSE 8080

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/usr/local/bin/shiori", "serve"]
