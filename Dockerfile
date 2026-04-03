# Practica 1
# FROM node:10
# FROM node:22-slim

# # Practica 2
# FROM node:22-slim
# WORKDIR /app
# COPY package*.json ./
# # Simulamos una instalación pesada
# # RUN sleep 10 && npm install 
# RUN sleep 10 
# COPY . .
# CMD ["node", "index.js"]

# Practica 3
# syntax=docker/dockerfile:1
FROM alpine:latest

# El secreto se monta temporalmente, no queda en la imagen
RUN --mount=type=secret,id=my_token \
    TOKEN=$(cat /run/secrets/my_token) && \
    echo "Usando token de longitud: ${#TOKEN}" && \
    echo "Simulando descarga de paquete privado..." && \
    sleep 2 && \
    echo "✅ Paquete descargado exitosamente"

CMD ["echo", "App lista"]
