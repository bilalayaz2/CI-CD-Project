FROM openjdk:8-jre-alpine

RUN pwd

EXPOSE 8080




RUN pwd

COPY ./build/libs/java-app-1.0-SNAPSHOT.jar /usr/app/

WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "java-app-1.0-SNAPSHOT.jar"]
