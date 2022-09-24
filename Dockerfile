FROM node:lts-alpine

WORKDIR /app

COPY . .

COPY package*.json ./
RUN npm install

USER node

CMD [ "node", "server.js"]

EXPOSE 3000