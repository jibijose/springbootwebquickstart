FROM openjdk:8-jdk-alpine
#FROM ubuntu:18.04

ARG JAR_FILE
COPY ${JAR_FILE} /tmp/app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","/tmp/app.jar"]
#CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]