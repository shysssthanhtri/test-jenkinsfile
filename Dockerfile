FROM node:alpine AS core
WORKDIR /app
RUN npm i -g pnpm

# BUILD
FROM core AS build
COPY ./package.json .
COPY pnpm-lock.yaml .
RUN pnpm install
COPY ./tsconfig.json .
COPY ./src ./src
RUN pnpm run build

# PRODUCTION
FROM core AS prod
COPY ./package.json .
COPY pnpm-lock.yaml .
RUN pnpm install --prod
COPY --from=build ./app/dist ./dist

ENTRYPOINT [ "pnpm", "start" ]
