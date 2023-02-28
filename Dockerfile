FROM node:16.10.0-buster

RUN apt-get update && \
  apt-get install -y \
  neofetch \
  chromium \
  ffmpeg \
  wget \
  imagemagick \
  graphicsmagick \
  webp \
  mc -y && \
  rm -rf /bin/sh/*

COPY package.json .

COPY . .

RUN yarn install

CMD ["pm2-runtime", "index.js"]`
