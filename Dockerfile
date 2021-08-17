#Install server
FROM debian:buster-slim
RUN set -x && apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Install node
FROM node:15.0.1-alpine3.11

# mkdir app directory to container and cd app/
WORKDIR /app

# Copy local files to container
COPY . .

RUN yarn install && yarn build

# CMD ["yarn", "start"]


# COPY --from=builder /app/build /app/build


# EXPOSE 8080
