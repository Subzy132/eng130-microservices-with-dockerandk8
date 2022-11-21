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
| Simple to develop relative to microservices, where skilled developers are required in order to identify and develop the services.
Easier to deploy as only a single jar/war file is deployed.
Relatively easier and simple to develop in comparison to microservices architecture.
The problems of network latency and security are relatively less in comparison to microservices architecture.
Developers need not learn different applications, they can keep their focus on one application. | It becomes too large with time and hence, difficult to manage.
We need to redeploy the whole application, even for a small change.
| As the size of the application increases, its start-up and deployment time also increases.
For any new developer joining the project, it is very difficult to understand the logic of a large Monolithic application even if his responsibility is related to a single functionality.
Even if a single part of the application is facing a large load/traffic, we need to deploy the instances of the entire application in multiple servers. It is very inefficient and takes up more resources unnecessarily. Hence, horizontal scaling is not feasible in monolithic applications.
It is very difficult to adopt any new technology which is well suited for a particular functionality as it affects the entire application, both in terms of time and cost.
It is not very reliable, as a single bug in any module can bring down the entire monolithic application.


**Microservices**

| Advantages | Disadvantages|
| --- | --- |
| It is easy to manage as it is relatively smaller.
If there’s any update in one of the microservices, then we need to redeploy only that microservice.
Microservices are self-contained and, hence, deployed independently. Their start-up and deployment times are relatively less.
It is very easy for a new developer to onboard the project as he needs to understand only a particular microservice providing the functionality he will be working on and not the whole system.
If a particular microservice is facing a large load because of the users using that functionality in excess, then we need to scale out that microservice only. Hence, the microservices architecture supports horizontal scaling.
Each microservice can use different technology based on the business requirements.
If a particular microservice goes down due to some bug, then it doesn’t affect other microservices and the whole system remains intact and continues providing other functionalities to the users.
| Being a distributed system, it is much more complex than monolithic applications. Its complexity increases with the increase in a number of microservices.
Skilled developers are required to work with microservices architecture, which can identify the microservices and manage their inter-communications.
Independent deployment of microservices is complicated.
Microservices are costly in terms of network usage as they need to interact with each other and all these remote calls result in network latency.
Microservices are less secure relative to monolithic applications due to the inter-services communication over the network.
Debugging is difficult as the control flows over many microservices and to point out why and where exactly the error occurred is a difficult task