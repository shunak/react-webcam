FROM node:15.0.1-alpine3.11

WORKDIR /app

COPY . .

RUN yarn install
