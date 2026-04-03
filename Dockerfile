# FROM node:10
# FROM node:22-slim
FROM node:22-slim
WORKDIR /app
COPY package*.json ./
# Simulamos una instalación pesada
# RUN sleep 10 && npm install 
RUN sleep 10 
COPY . .
CMD ["node", "index.js"]
