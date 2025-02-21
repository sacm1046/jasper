FROM openjdk:6-jdk
WORKDIR /app

COPY jasperreports-5.6.0 /app/jasperreports-5.6.0

RUN apt-get update && apt-get install -y zip && \
    zip -r /app/jasperreports-5.6.0-project.zip /app/jasperreports-5.6.0 && \
    rm -rf /app/jasperreports-5.6.0