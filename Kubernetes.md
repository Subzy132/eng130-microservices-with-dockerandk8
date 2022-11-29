# Kubernetes

## Intro

- Use Docker desktop settings to install kubernetes
- Run `kubectl` to pull up cheat sheat
- Run `kubectl get service` or `kubectl get svc`to see the kubernetes info
- Run `kubectl dluster info` to see more information

## Task 

- create nginx-deployment.yml
- using the nginx-image
- create 3 pods
- check status
- kubectl get, create, delete, apply etc.
- kubectl get what-info-do-you-wanna-get
- kubectl get, deploy

1. Made a `nginx-deploy.yml` and added this code
**nginx-deploy.yml**
```yml
apiVersion: apps/v1 # which api to use for deployment
kind: Deployment # what kind of service/object you want to create

# what would you like to call it - name the service/object
metadata:
  name: nginx-deployment
spec: 
  selector:
    matchLabels:
      app: nginx # look for this label to match with k8 service
  
  # create 3 replica sets of this pod
  replicas: 3
  # template to use it's label for k8 service to launch in the browser
  template: 
    metadata:
      labels:
        app: nginx
   # let's define the container spec
    spec:
      containers:
      - name: nginx
        image: subhaanh00/eng130-microservice:latest
        ports:
        - containerPort: 80
```
2. Run `kubectl create -f nginx-deploy.yml` to run the script
3. Run `kubectl get deployment` to see the deployments running
4. Run `kubectl get pods` to see all the pods running
5. Run `kubectl delete deploy nginx-deployment` to delete the deployment
6. Made a new file called `nginx-service.yml`
**nginx-service.yml**
```yml
---
# Select the type of API version and type of service/object
apiVersion: v1
kind: Service

# metadata for name
metadata:
  name: nginx-svc
  namespace: default
# specification to include ports Selector to connect to the deployment
spec: 
  ports: 
  - nodePort: 30001 # range is 30000 - 32768
    port: 80
    targetPort: 80

  # let's define the sselector and label to connect to nginx deployment
  selector: 
    app: nginx # this label connects this service to deployment
  # creating NodePort type of deployment
  type: NodePort # also use LoadBalancer - fro local use cluster IP
  
```
7. Run `kubectl create -f nginx-service.yml ` to run the .yml file
8. Run `kubectl get svc` to see the services running

## Node deployment diagram

![Alt text](/images/kubernetes.png)

## Building node app deployment

