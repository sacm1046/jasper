# FROM openjdk:6-jdk
# WORKDIR /app
# COPY jasperreports-5.6.0 /app/jasperreports-5.6.0

# Usar OpenJDK 6 como base
FROM openjdk:6-jdk

# Establecer el directorio de trabajo en /app
WORKDIR /app

# Copiar JasperReports al contenedor
COPY jasperreports-5.6.0 /app/jasperreports-5.6.0

# Instalar herramientas necesarias y comprimir JasperReports
RUN apt-get update && apt-get install -y zip unzip && \
    zip -r /app/jasperreports-5.6.0-project.zip /app/jasperreports-5.6.0

# Definir CLASSPATH con las dependencias de JasperReports
ENV CLASSPATH=/app/jasperreports-5.6.0/dist/jasperreports-5.6.0.jar:/app/jasperreports-5.6.0/lib/*

# Definir el punto de entrada del contenedor
ENTRYPOINT ["/bin/bash"]
