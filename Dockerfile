# load node version
FROM ubuntu:18.04
FROM node:16

# create app dir
WORKDIR /home/app

RUN mkdri -p /home/app

# install dependencies
COPY ./ /home/app

RUN npm install

EXPOSE 8888

CMD ["node", "index.js"]
