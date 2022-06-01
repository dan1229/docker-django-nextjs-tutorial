#
# CLIENT DOCKERFILE
#
FROM node:alpine


RUN mkdir /client
COPY . /client
COPY package.json /client/package.json
WORKDIR /client
RUN npm install

CMD ["./entrypoint.sh"]