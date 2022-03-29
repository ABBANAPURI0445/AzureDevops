## Monolithic 
   1. one big build and it contains multiple components  
       1. if you want to scale up of one single component --> its not posible 
       2. where we deploy Monolithic application --> Servers (Linux, Windows) 
  ![Monolithicapp](Monolithic.png)
### Dis advantage 
   1. we can not scale up and scale down single component, we need to scale entire big build, its waste of resources(CPU, RAM, Storage) 

## Micro Services           
   1. each one piece of component (payment, orders,cart, login,fashoin)
      1. you can scaleup and scale down  single component 
      2. where we deploy Micro services --> Containers (Docker) 
 ![Micro Service](MicroServices.png) 
