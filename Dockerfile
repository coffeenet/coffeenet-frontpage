FROM openjdk:8-jre-alpine

EXPOSE 8080

ENV JAVA_APP_JAR="app.jar"

VOLUME /tmp
ADD /maven/${project.build.finalName}.jar app.jar
ADD target/docker-extra/run-java/run-java.sh run-java.sh

ENTRYPOINT [ "sh", "-c", "./run-java.sh" ]
