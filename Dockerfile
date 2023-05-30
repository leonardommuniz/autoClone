FROM node:20-alpine3.16
WORKDIR /usr/src/app
COPY . ./
RUN apk update && apk add bash && apk add curl && apk add git
RUN chmod +x ./scripts/sayHello.sh
COPY package.json ./
RUN npm install
EXPOSE 8080
CMD [ "node", "index.js" ]