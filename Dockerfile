FROM openjdk:6-jdk
WORKDIR /app
RUN mkdir -p /app/jasperreports-5.6.0
COPY jasperreports-5.6.0 /app/jasperreports-5.6.0
