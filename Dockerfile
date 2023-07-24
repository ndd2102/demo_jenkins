FROM maven:3.6.0-jdk-11-slim AS build
COPY . .
RUN mvn clean
RUN mvn package

FROM openjdk:17.0.1-jdk-slim

COPY --from=build /target/demo-0.0.1-SNAPSHOT.jar demo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/demo-0.0.1-SNAPSHOT.jar"]