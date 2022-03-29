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