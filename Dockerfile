FROM node:14.17 AS server-build

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package*.json /usr/src/app/
RUN npm install
# RUN npm install bcrypt
COPY . /usr/src/app/
# COPY .env /usr/src/app/.env
# COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 3011

CMD [ "npm", "run", "start" ]