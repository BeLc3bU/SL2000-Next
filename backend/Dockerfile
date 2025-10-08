# Etapa 1: Construcción con Maven
FROM maven:3.8-openjdk-17 AS build

WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline

COPY src ./src
RUN mvn package -DskipTests

# Etapa 2: Ejecución
FROM openjdk:17-slim

WORKDIR /app
COPY --from=build /app/target/sl2000-next-backend-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]