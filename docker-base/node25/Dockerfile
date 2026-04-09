# FROM node:23-bookworm-slim
FROM node:25-alpine

RUN apt-get update && apt-get install -y openssl && rm -rf /var/lib/apt/lists/*

WORKDIR /app