#### Retrieve auth token to authenticate docker to AWS ECR

- Must have AWS configured on the terminal with AWS CLI
  `aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/n4h2t8j2`

#### Build docker image

`docker build -t base-express-http-server .`

#### Tag image with registry name to push to ECR

`docker tag base-express-http-server:latest public.ecr.aws/n4h2t8j2/base-express-http-server:latest`

#### Push image to AWS ECR

`docker push public.ecr.aws/n4h2t8j2/base-express-http-server:latest`
