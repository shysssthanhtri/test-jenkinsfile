FROM node:alpipe AS core
WORKDIR /app
RUN npm i -g pnpm

# BUILD
FROM core AS build
COPY ./package.json .
COPY pnpm-lock.yaml .
RUN pnpm install