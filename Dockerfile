FROM openjdk:8-jre-alpine

EXPOSE 8080

RUN pwd
WORKDIR /usr/app

RUN ls -la ./src
RUN ls -la ./build
RUN ls -la ./build/libs/
COPY ./build/libs/java-app-1.0-SNAPSHOT.jar /usr/app/


ENTRYPOINT ["java", "-jar", "java-app-1.0-SNAPSHOT.jar"]
