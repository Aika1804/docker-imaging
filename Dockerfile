# Stage 1: Build the JAR
FROM openjdk:17
EXPOSE 8080
ADD target/aishu-docker.jar aishu-docker.jar
ENTRYPOINT ["java","-jar","/aishu-docker.jar"]