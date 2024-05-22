FROM node:20

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm ci

COPY . .

ENV FASTIFY_ADDRESS 0.0.0.0

# Команда, которая запускается автоматически
# при старте контейнера
CMD ["npm", "start"]
