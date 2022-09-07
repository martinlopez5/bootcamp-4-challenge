# load node version
FROM node:16-alpine

# create app dir
WORKDIR /usr/src/app

# install dependencies
COPY ./ /usr/src/app/

RUN npm install

EXPOSE 8888

CMD ["npm", "start"]