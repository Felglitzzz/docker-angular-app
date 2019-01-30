# base image
FROM node:10.15.0

# set working directory
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

# install and cache app dependencies
COPY package.json /usr/src/app/package.json

RUN ["npm", "install"]

COPY . /usr/src/app

CMD ["npm", "start", "--", "--host", "0.0.0.0", "--poll", "500"]