# from the base image of a jdk 11 container on Ubuntu 20.04.
FROM eclipse-temurin:17-jdk-alpine

# create a work dir.
WORKDIR /app

# copy a jvm app.
COPY ./build/libs/docker_spring_boot-0.0.1-SNAPSHOT.jar app.jar

# open port 8080 for a jvm app.
EXPOSE 8080

# startup a jvm app.
ENTRYPOINT ["java","-jar","app.jar"]