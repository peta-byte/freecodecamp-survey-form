FROM node:10
WORKDIR /home/node/codepen-survey
COPY package*.json ./
RUN npm install
COPY ./dist/ ./
EXPOSE 8083
CMD [ "node", "index.js" ]
