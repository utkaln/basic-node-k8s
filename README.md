# basic-node-k8s

basic node app deployed as kubernetes

## Build Docker image

`docker build . -t utkal/base-express-http-server`

## List docket images available

`docker images`

## Run the image

`docker run -p 49160:8080 -d utkal/base-express-http-server`

## Monitor app running from the image

`docker ps`

## Print app logs

`docker logs <container_id>`

## Test out the express app

`curl -i localhost:49160`

## Stop the image

`docker kill <container_id>`
