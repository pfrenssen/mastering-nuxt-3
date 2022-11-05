FROM node:16

WORKDIR /app

RUN apt-get update && apt-get upgrade -y

COPY ./package*.json /app/

RUN yarn install

COPY . .

ENV PATH ./node_modules/.bin/:$PATH

