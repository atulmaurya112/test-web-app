FROM maven:3.9.11-eclipse-temurin-17 AS build

WORKDIR /app/test-web-app

COPY pom.xml .

RUN mvn dependency:go-offline

COPY src ./src

RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-jre

WORKDIR /app/test-web-app

# Copy generated jar
COPY --from=build /app/test-web-app/target/*.jar app.jar

EXPOSE 7051

ENTRYPOINT ["java", "-jar", "app.jar"]