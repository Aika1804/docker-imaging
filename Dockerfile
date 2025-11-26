# Stage 1: Build the JAR
FROM mcr.microsoft.com/openjdk/jdk:17-ubuntu
EXPOSE 8080
ADD target/aishu-docker.jar aishu-docker.jar
ENTRYPOINT ["java","-jar","/aishu-docker.jar"]