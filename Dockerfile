FROM node:18

# app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN  npm install

# Bundle app source code inside docker image
COPY . .

# Expose the port to which the app is binding to
EXPOSE 8080

# Specifiy the command to run at start of server
CMD ["node", "server.js"]
