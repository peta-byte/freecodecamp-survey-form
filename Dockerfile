FROM node:10.19.0-alpine3.9
WORKDIR /home/node/codepen-survey
COPY package*.json ./
RUN npm install
COPY ./dist/ ./
EXPOSE 8083
CMD [ "node", "index.js" ]
