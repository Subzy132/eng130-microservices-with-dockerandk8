# Micro-services with Docker and Kubernetes

![Alt text](/images/monolithdiagram.png)

### What is Micro-services?

Microservices - also known as the microservice architecture - is an architectural style that structures an application as a collection of services that are

- Highly maintainable and testable
- Loosely coupled
- Independently deployable
- Organized around business capabilities
- Owned by a small team

The microservice architecture enables the rapid, frequent and reliable delivery of large, complex applications. It also enables an organization to evolve its technology stack.

### What is Docker?

Docker is an open platform for developing, shipping, and running applications. Docker enables you to separate your applications from your infrastructure so you can deliver software quickly. With Docker, you can manage your infrastructure in the same ways you manage your applications. By taking advantage of Docker’s methodologies for shipping, testing, and deploying code quickly, you can significantly reduce the delay between writing code and running it in production.

Some benefits are: 

- Caching a cluster of containers
- Flexible resource sharing
- Scalability - many containers can be placed in a single host
- Running your service on hardware that is much cheaper than - standard servers
- Fast deployment, ease of creating new instances, and faster migrations.
- Ease of moving and maintaining your applications
- Better security, less access needed to work with the code running inside containers, and fewer software dependencies

### Microservices vs Monolith

**Monolith**
| Advantages | Disadvantages|
| --- | --- |
| Simple to develop relative to microservices, where skilled developers are required in order to identify and develop the services. | It becomes too large with time and hence, difficult to manage. 
| Easier to deploy as only a single jar/war file is deployed. | We need to redeploy the whole application, even for a small change.
| Relatively easier and simple to develop in comparison to microservices architecture. | As the size of the application increases, its start-up and deployment time also increases.




**Microservices**

| Advantages | Disadvantages|
| --- | --- |
|It is easy to manage as it is relatively smaller.| Being a distributed system, it is much more complex than monolithic applications. Its complexity increases with the increase in a number of microservices|
| If there’s any update in one of the microservices, then we need to redeploy only that microservice. | Skilled developers are required to work with microservices architecture, which can identify the microservices and manage their inter-communications.
| Microservices are self-contained and, hence, deployed independently. Their start-up and deployment times are relatively less. | Independent deployment of microservices is complicated.


### Docker shell commands

- `docker --version`  - should get the version 20.11
-  `docker` - gets the cheat sheet for docker
-  `docker pull hello-world` - downloads the hello-world container
-  `docker images` - displays the images you have
-  `docker run hello-world`  - runs the image we downloaded before 
-  `docker ps` - draws the processes that are running at the moment
-  `docker ps -a`- draws ALL the processes that are running at the moment
-  `docker run -p 2368:2368 ghost` - will pull and then run it in one go and select the correct port
-  `docker rm [docker id] -f` - to force delete docker that is running
-  `docker run -p 80:80 nginx` - to launch nginx 
-  `docker run -d -p 80:80 nginx` - d stands for detatch mode so we will get the terminal back when run
-  `docker logs [container id]` - shows the logs of the running process
-  `docker run -d -p 4000:4000 docs/docker.github.io` - downaloads container and can run in the background. run localhost:4000
-  `docker stop [process id]` - stops the process running with all the 
-  `docker start [process id]` -  starts the process where it left off
-  `docker exec -it [process id] bash` - be able to execute shell commands in the process provided
-  Once inside you need to run `apt update`
-  then `apt install sudo`
-  Run `cd /usr/share/nginx/html`


### Task

- the command to copy file from local host to docker is `docker cp /hostfile  (container_id):/(to_the_place_you_want_the_file_to_be)` 
- So I then gathered my `host file` location on my local host
- I took note of the `container id` 
- I then ssh into the container and to the destination location and ran `pwd` and took note of the outcome.
- I made my `index.html` file
- On my terminal i made the command `docker cp /Users/subhaanadmin/eng130-microservices/index.html  54ca8fdcbf20:/usr/share/nginx/html` and was able to copy my file. 
- I then created a new repository on docker hub
- Run `docker images`
- Run `docker tag nginx:latest subhaanh00/eng130-microservice:latest` to change the tag
- I then ran `docker push subhaanh00/eng130-microservice:latest` making sure that i am logged into the docker app

### Docker Cheat Sheet

```bash

Commands:
  attach      Attach local standard input, output, and error streams to a running container
  build       Build an image from a Dockerfile
  commit      Create a new image from a container's changes
  cp          Copy files/folders between a container and the local filesystem
  create      Create a new container
  diff        Inspect changes to files or directories on a container's filesystem
  events      Get real time events from the server
  exec        Run a command in a running container
  export      Export a container's filesystem as a tar archive
  history     Show the history of an image
  images      List images
  import      Import the contents from a tarball to create a filesystem image
  info        Display system-wide information
  inspect     Return low-level information on Docker objects
  kill        Kill one or more running containers
  load        Load an image from a tar archive or STDIN
  login       Log in to a Docker registry
  logout      Log out from a Docker registry
  logs        Fetch the logs of a container
  pause       Pause all processes within one or more containers
  port        List port mappings or a specific mapping for the container
  ps          List containers
  pull        Pull an image or a repository from a registry
  push        Push an image or a repository to a registry
  rename      Rename a container
  restart     Restart one or more containers
  rm          Remove one or more containers
  rmi         Remove one or more images
  run         Run a command in a new container
  save        Save one or more images to a tar archive (streamed to STDOUT by default)
  search      Search the Docker Hub for images
  start       Start one or more stopped containers
  stats       Display a live stream of container(s) resource usage statistics
  stop        Stop one or more running containers
  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
  top         Display the running processes of a container
  unpause     Unpause all processes within one or more containers
  update      Update configuration of one or more containers
  version     Show the Docker version information
  wait        Block until one or more containers stop, then print their exit codes
```

### Automation example

- `cd` into the same location where the `index.html` file is for ease of use. But you can have the file anywhere but you just have to put the correct file path
- Run `nano Dockerfile` to create our automation script 


**Dockerfile**
```Docker
# docker run nginx - base image
FROM nginx

# Who is creating this

LABEL MAINTAINER=subhaan

# created index.html profile - copy tp container

# default location /usr/share/nginx/html/

COPY index.html /usr/share/nginx/html/
COPY subhaan.png /usr/share/nginx/html/

# docker run -d -p 80:80 name

# port number 

EXPOSE 80

# launch server

CMD ["nginx", "-g", "daemon off;"]
```
- Run `docker build -t subhaanh00/eng130-microservice .`  to build the script we just made
- Run `docker ps` to see if port 80 is being used
- Run `docker rm [Process id] -f ` because I had a process running on port 80
- Run `docker run -d -p 80:80 subhaanh00/eng130-microservice` to run the image i've just created
- check `localhost` on browser to see if it works
- Any changes you make to the image you need to commit the changes so Run `docker commit [process id] [username]/[repo name]:latest`
- If it does work then I can push it to my docker hub using `docker push subhaanh00/eng130-microservice` 

![Alt text](/images/indexpage.png)

Here is what the web page should look like if the set up is working. 

### Node app task

1. `mkdir eng130-node-app` - made new directory
2. Copy and pasted `app` folder into new folder
3. `nano Dockerfile` - made a new script file
```Docker
# Copy over the app folder and have it running on node

FROM nginx
LABEL MAINTAINER=subhaan
COPY app /home/
EXPOSE 80
EXPOSE 3000
RUN apt-get update
RUN apt-get install -y
RUN apt-get install software-properties-common -y
RUN apt-get install npm -y
CMD ["nginx", "-g", "daemon off;"]
WORKDIR /home/app
RUN npm install
CMD ["npm", "start"]
```
4. Save the file
5. Run the build using `docker build -t subhaanh00/eng130-microservice .`
6. Then to see if the image is working run `docker run -d -p 3000:3000 subhaanh00/eng130-microservice`
7. Put `localhost:3000` into the browser and the website should be up and running