# dockerised-node-js-app


This is a simple Node js application which displays "HellowWorld" on successful deployment in Docker Container. 

Your company is moving their Node.js application to Docker. You were asked to install and configure the Docker Engine on a test server. In addition you were given a test application to make sure your setup works as expected. The path to the application on the server is /var/lib/docker-application.
Your task is to:
•	Install and configure Docker,

- Used the following commands to install and start Docker
https://phoenixnap.com/kb/how-to-install-docker-on-ubuntu-18-04

sudo apt-get update
sudo apt-get remove docker docker-engine docker.io
sudo apt install docker.io
sudo systemctl start docker
sudo systemctl enable docker
docker --version


•	Build a docker image for the sample application with nodejs/app:latest tag,

docker build -t nodejs/app:latest .

Pre-requisites:
Dockerfile must be present in this path.
Package.json and Server.js for loading the node js application

After running the docker command, please verify:
docker images (output)

REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE



nodejs/app          latest              8c8936840d25        32 minutes ago      904 MB



node                carbon              8eeadf3757f4        3 months ago        901 MB


•	Run the image in the background - make sure to expose port 8080 to the world!


docker run --name my-node-js-app-container -p 8080:8080 -d my-nodejs-app:latest

After running the docker command, please verify:
docker ps

CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS                    NAMES
96195a142dc7        nodejs/app:latest   "npm start"         32 minutes ago      Up 32 minutes       0.0.0.0:8080->8080/tcp   my-node-js-app-container

note : -d (detached mode)


LAUNCH THE NODE JS APPLICATION:
<aws-host>:8080.
  
  For example:http://ec2-52-33-196-207.us-west-2.compute.amazonaws.com:8080/
  





