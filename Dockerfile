FROM openjdk:8u252-jre-slim

WORKDIR /usr/service
RUN ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' > /etc/timezone
ARG APP_JAR=*.jar
COPY ${APP_JAR} app.jar
ENTRYPOINT ["java"]
#CMD ["-server", "-Xms256m", "-Xmx256m", "-Ddubbo.protocol.port=8000", "-jar", "app.jar", "--server.port=8080", "--spring.profiles.active=test"]
CMD ["-server", "-Xms256m", "-Xmx256m", "-Ddubbo.protocol.port=8000", "-jar", "app.jar", "--server.port=8080", "--spring.profiles.active=test"]
