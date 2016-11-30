FROM node:7.2-alpine
MAINTAINER Antonis Kalipetis <akalipetis@gmail.com>

CMD ["nodemon"]

RUN npm install -g nodemon

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app
