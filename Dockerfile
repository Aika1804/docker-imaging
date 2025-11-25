# Stage 1: Build the JAR
FROM eclipse-temurin:17-jdk-alpine AS build

WORKDIR /app
COPY . .

# Stage 2: Run the JAR
FROM eclipse-temurin:17-jre-alpine

WORKDIR /app
COPY --from=build /target/*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]