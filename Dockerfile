FROM maven:3.6.0-jdk-17-slim AS build
COPY . .
RUN mvn clean
RUN mvn package

FROM openjdk:17-jre-slim

COPY --from=build /target/demo-0.0.1-SNAPSHOT.jar demo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/demo-0.0.1-SNAPSHOT.jar"]