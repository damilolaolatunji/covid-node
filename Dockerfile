FROM node:16-alpine
WORKDIR /app
COPY package.json yarn.lock /app
RUN yarn --frozen-lockfile
COPY . .
EXPOSE 4000
CMD yarn start
