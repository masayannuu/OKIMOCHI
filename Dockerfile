from node:latest
MAINTAINER Joe Miyamoto <joemphilips@gmail.com>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY config.js index.js package.json /usr/src/app/
RUN npm install --production --no-progress && npm cache verify


CMD ["node", "index.js"]
