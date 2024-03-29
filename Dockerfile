# Install node
ARG VERSION=15.0.1-alpine3.11
# FROM node:15.0.1-alpine3.11
FROM node:$VERSION

# mkdir app directory to container and cd app/
WORKDIR /app

# Copy local files to container
COPY . .

RUN yarn install
