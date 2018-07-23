FROM openjdk:8-jre

VOLUME /tmp/devops

ARG JAR_FILE=target/demo-1.0.0-SNAPSHOT.jar
COPY ${JAR_FILE} api.jar

ENV PROFILE="DEV"

COPY docker-entrypoint.sh /

RUN ln -s /docker-entrypoint.sh /bin && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone

EXPOSE 8080
ENTRYPOINT [ "docker-entrypoint.sh" ]
