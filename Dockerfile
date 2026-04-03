# FROM node:10
# FROM node:22-slim
FROM node:22-slim
WORKDIR /app
COPY package*.json ./
# Simulamos una instalación pesada
RUN sleep 10 && npm install 
COPY . .
CMD ["node", "index.js"]
