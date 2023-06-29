FROM openjdk:17

# Đặt biến JAR_FILE là file có đuôi jar trong thư mục target
COPY target/demo-0.0.1-SNAPSHOT.jar demo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/demo-0.0.1-SNAPSHOT.jar"]