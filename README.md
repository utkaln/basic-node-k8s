# basic-node-k8s

basic node app deployed as kubernetes

## Build Docker image

`docker build . -t utkal/base-express-http-server`

#### List docket images available

`docker images`

#### Run the image

`docker run -p 49160:8080 -d utkal/base-express-http-server`

#### Monitor app running from the image

`docker ps`

#### Print app logs

`docker logs <container_id>`

#### Test out the express app

`curl -i localhost:49160`

#### Stop the container and remove

`docker kill <container_id>`

#### Stop the container but does not remove

`docker stop <container_id>`

#### Delete an container

`docker rm <container_id>`

#### Delete an image before rebuilding

- Note: Stop the container before deleting

`docker rmi <image_id>`

# Docker Compose

- Docker compose provides an easier way to run the docker commands in one go to bring up an app or take it down
  `docker-compose -f docker-compose.yml up`

# Troubleshoot

- Delete any docker process
  `docker rm -fv $(docker ps -aq)`

# Publish Image to Registry

- To push to AWS ECR follow this link [AWS-ECR-Instructions](AWS-ECR-Instructions.md)
