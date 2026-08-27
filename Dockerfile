FROM --platform=linux/amd64 node:22-slim

WORKDIR /usr/src/app

RUN npm install --global npm@11.9.0

ADD . .

RUN npm ci

RUN npm run build

CMD ["node", "dist/main.js"]
