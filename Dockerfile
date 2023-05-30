FROM node:20-alpine3.16
WORKDIR /usr/src/app
COPY . ./
RUN apk update && apk add bash && apk add curl && apk add git
RUN chmod +x ./scripts/cloneRepository.sh
COPY package.json ./
RUN npm install
EXPOSE 3000
CMD [ "node", "server.js" ]