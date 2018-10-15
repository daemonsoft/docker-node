FROM node:6.14.4-alpine
LABEL description="Tarea 1"
EXPOSE 3000
RUN apk add --no-cache tini
WORKDIR /usr/src/app
COPY . .
RUN npm install && npm cache clean --force
ENTRYPOINT ["/sbin/tini", "--", "node", "./bin/www" ]