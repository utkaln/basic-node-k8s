FROM node:18-alpine


# app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./


# Bundle app source code inside docker image
COPY ./server.js .
COPY ./package.json .

RUN npm prune --production

RUN  npm install

# Expose the port to which the app is binding to
EXPOSE 8080

# Specifiy the command to run at start of server
CMD ["node", "server.js"]
