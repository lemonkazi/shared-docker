FROM node:25-bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    openssl \
    && rm -rf /var/lib/apt/lists/*

# Enable Yarn via Corepack (best for Yarn 2+)
# RUN corepack enable

WORKDIR /app

RUN node --version && npm --version && yarn --version