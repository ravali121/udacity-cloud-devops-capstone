FROM node:15-alpine
LABEL maintainer="ravali121@gmail.com"

WORKDIR /usr/src/weather-app

COPY weather-app/ .

RUN npm install

EXPOSE 3000

CMD [ "npm", "start" ]
