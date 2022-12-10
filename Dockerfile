FROM node:16-alpine

WORKDIR /app

COPY package*.json ./
COPY yarn.lock ./

RUN yarn install --frozen-lockfile

COPY . .

RUN yarn build

EXPOSE 3000

ENTRYPOINT ["sh", "-c"]

CMD ["yarn", "start"]