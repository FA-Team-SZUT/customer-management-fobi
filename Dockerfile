FROM adoptopenjdk:11-jre-openj9
MAINTAINER Lars Michaelis <mail@larmic.de>

ARG JAR_FILE
COPY target/${JAR_FILE} /spring-boot-app.jar

ARG SPRING_BOOT_PROFILE

ENV WEB_IP "$WEB_ADDRESS_INT"

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/spring-boot-app.jar"]