# этап сборки (build stage)
FROM node:lts-alpine as build-stage
WORKDIR /app
# install vite globally
RUN npm install -g vite
# copy all filtes
COPY . .
RUN echo 'yarn-offline-mirror ".yarn-cache/"' >> .yarnrc
RUN echo 'yarn-offline-mirror-pruning true' >> .yarnrc
# install all deps
RUN yarn install --cache-folder .yarn --frozen-lockfile

# vite default port
CMD ["yarn", "run", "dev"]
