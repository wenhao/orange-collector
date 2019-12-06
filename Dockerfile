FROM openjdk:8-alpine

RUN apk add --no-cache bash

VOLUME /tmp
COPY ./build/libs/*.jar /opt/app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/app.jar"]