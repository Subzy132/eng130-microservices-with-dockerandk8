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



