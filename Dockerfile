FROM alpine:latest

WORKDIR /home/app

RUN apk add --no-cache --upgrade bash
RUN apk add --no-cache openjdk17-jdk

COPY . .

EXPOSE 25565

ENTRYPOINT ["/home/app/start.sh"]