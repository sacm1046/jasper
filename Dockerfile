FROM openjdk:6-jdk

WORKDIR /app

# Verificar si el archivo está en el contexto antes de copiarlo
RUN ls -lah / || echo "⚠️ ERROR: No se encontró el archivo en el build context"

# Copiar el archivo .zip al contenedor
COPY jasperreports-5.6.0-project.zip /app/
