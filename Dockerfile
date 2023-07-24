FROM maven:3.8.1-openjdk-17-slim AS build
COPY . .
RUN mvn clean
RUN mvn package

FROM openjdk:17.0.1-jdk-slim

COPY --from=build /target/demo-0.0.1-SNAPSHOT.jar demo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/demo-0.0.1-SNAPSHOT.jar"]