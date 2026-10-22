# этап сборки (build stage)
FROM node:20-alpine
WORKDIR /app


# install vite globally
RUN npm install -g vite

RUN yarn set version stable
RUN yarn --version
# copy all filtes
COPY package.json yarn.lock ./

# install all deps
RUN yarn install
COPY . . 
# vite default port
CMD ["yarn", "dev"]
