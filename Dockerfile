FROM alpine:latest

LABEL maintainer "Joshua Marsh"

EXPOSE 25565/tcp
EXPOSE 25565/udp

RUN apk add --update --no-cache openjdk8-jre wget nss

VOLUME /data

COPY files /data

WORKDIR /data

ENTRYPOINT ["java", "-Xms3G", "-Xmx5G", "-jar", "forge-1.16.5-36.2.34.jar", "nogui"]
