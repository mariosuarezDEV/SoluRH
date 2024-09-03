FROM python:3.11.9-slim-bullseye
LABEL authors="luismariocervantessuarez"

# Establecer la variable de entorno para evitar la salida interactiva durante la instalación
ENV DEBIAN_FRONTEND=noninteractive

# Actualizar los repositorios e instalar las dependencias necesarias para construir paquetes
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    python3-dev \
    libpq-dev \
    pkg-config \
    libmariadb-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos necesarios al contenedor
COPY . /app

# Instalar las dependencias de Python
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r paquetes.txt

# Exponer el puerto 80
EXPOSE 80

# Ejecutar el servicio
CMD ["daphne", "-b", "0.0.0.0", "-p", "80", "SuiteFC.asgi:application"]