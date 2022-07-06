### Tradational Method 


### Stages in CICD 
  1. Developer write the code and push into repository  --> Git
  2. clone the repository  --> GITHUB
  3. build the application (mvn package) --> .war file  --> Build tool Maven, ant
  4. sonarqube --> it check code quality, it have quality gates ---> Sonarqube
  5. if you want secuirity check --> Fortify 
  6. upload into artifact, Jfrog, nexus, Azure artifact ---> Jfrog 
  7. Deployment   ---> Micro- Docker and Kubernetes Mono: ansible, Chef, Puppet --> IAC terrafrom 
        1. First deploy into Dev and Testing Environment: here they do all tesings 
            1. Manual tesing or automation testing 
            2. Performance tesing If all test cases are Pass then only deploy into UAT or Staging 
            3. in UAT user accept the application then deploy into Production 

#### CICD  
  1. Continues Integration (1 to 6 Stages)
  2. Continues Delivery/Deployment (7th stage) 



#### Develop any application 
   1. Skeloton Infrastracture--> Manually, Az cli, ARM Templates, Azure Powershell, Terraform (Private cloud or Public cloud (Azure)
   2. Provisioning &Deployemnt --> Configuration Management Tools Ansible, Chef
   3. CICD --> Cron jobs or Schedule task with Additional Intelligence 
      1. We integrate all tools  in jenkins