FROM node:18-alpine3.19

# RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

# USER node

RUN npm install

COPY . .

EXPOSE 7200

USER node

CMD [ "node", "socket.js" ]
