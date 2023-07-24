FROM maven:3.8.3-openjdk-17 AS build
COPY . .
RUN mvn clean
RUN mvn package

FROM openjdk:17-alpine

COPY --from=build /target/demo-0.0.1-SNAPSHOT.jar demo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/demo-0.0.1-SNAPSHOT.jar"]