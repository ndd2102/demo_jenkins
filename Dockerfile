FROM openjdk:17
VOLUME /tmp
EXPOSE 8000
ARG JAR_FILE=target/demo_jenkins.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]