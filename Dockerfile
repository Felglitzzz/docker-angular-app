# base image
FROM node:10.15.0

# set working directory
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

# install and cache app dependencies
COPY package.json /usr/src/app/package.json

RUN ["npm", "install"]

RUN npm install -g @angular/cli@7.1.4

CMD ng build --prod

COPY . /usr/src/app

RUN ["npm", "start"]
