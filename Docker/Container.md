## Container 
   1. Physical Machine
       1. one Hardware and one Operating System ie:  Personal Computer 
       2. if you deploy application in your PC --> anything could happen like power issue, hdd corrupt etc
   2. Virtual Machine
       1. one Hardware and multiple Operating Systems 
       2. how to install multiple Os on Single Hardware? 
          ```
          using Virtualizition Techonology 
             1. Virtual Box
             2. VM Ware
             3. Hyper-V (Azure using this Technology to create VM's) 
          ```
       3. Virtual Machines are right place to deploy Monolithic application 
   3. Container 
       1. Containers are light wieght 
       2. you can easily spinup containers 
       3. its not full blown OS --> OS not using much resources(RAM, CPU, Storage)
       4. Containers are right place to deploy Micro Services 



### Agenda 
   1. Install Docker Engine
   2. Create Docker Container with Tomcat
   3. Deploy Application in Container 


### Java Application deploy in to Container 
   1. Requirements 
       1. Ubuntu OS
       2. Java8
       3. Tomcat8 
### Options
  1. Select Image Ubuntu OS 
  2. Install Java8
  3. Install tomcat8
  4. Deploy .war file into Tomcat8  

##### Note: Someone aleardy install Java8 on ubuntu 
  1. In this case you can select Java image (ubuntu and java)
  2. install tomcat8
  3. Deploy .war file into Tomcat8   

##### Note: someone already install tomcat8 on ubuntu 
  1. in this case you can select tomcat8 image (ubuntu, Java8 and Tomcat)
  2. Deploy .war file into Tomcat8    



#### where to choose Docker image and how to choose? 
   1. for practice purpose we have public registry called as Docker Hub
   2. in organization they maintain private registry 
        1. if your Company using AWS cloud  --- ECR(Elastic container registry)
        2. if your Company using Azure cloud  -- ACR(Azure container registry)
        3. if your Company using Private cloud -- Nexus, GitLab, oneartifact etc. 

### DOcker Hub
   1. DOcker Hub is Public Registry 
   2. Anyone can Develop Image and push Docker Hub and anyone can use this image 
   3. Ubuntu , Java , Tomcat8, mysql etc. these Image someone developed already, if you want you can use 

### Deploy .war in Tomcat8
   1. Case1: Base Image ubuntu
       1. pull docker ubuntu docker image and create container, login into container 
          1. go to Docker Hub
          2. search for ubuntu and pull the image 
             ```
             docker pull ubuntu:18.04 
             docker image ls 
             ``` 
          3. create container with interactive mode 
             ```
             docker container run -it b67d6ac264e4 /bin/bash
             ``` 
          
       2. install java8  
            ```
            sudo apt-get update
            sudo apt install openjdk-8-jdk -y
            ```
       3. install tomcat8 
          ```
          apt-get install tomcat8
          ```
       4. deploy .war fie 



      

