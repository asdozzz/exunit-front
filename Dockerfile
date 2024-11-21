# этап сборки (build stage)
FROM node:lts-alpine as build-stage
WORKDIR /app


# install vite globally
RUN npm install -g vite

RUN yarn set version stable
RUN yarn --version
# copy all filtes
COPY . .

# install all deps
RUN yarn install --immutable --immutable-cache

# vite default port
CMD ["yarn", "run", "dev"]
