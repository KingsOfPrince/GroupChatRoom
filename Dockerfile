FROM node:14-alpine

WORKDIR /public

COPY package*.json ./

RUN yarn install

COPY . /app/

EXPOSE 3000

ENV NODE_ENV=production

CMD ["yarn", "dev"]
