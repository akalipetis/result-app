FROM node:7.2-alpine
MAINTAINER Antonis Kalipetis <akalipetis@gmail.com>

CMD ["nodemon"]

RUN npm install -g nodemon

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install && mv node_modules /
COPY . /usr/src/app
