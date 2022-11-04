### CD 
 1. CI: Continues Integration  
    1. clone code from Repo's eg: github
    2. build code using Maven
    3. sonarqube -- code quality
    4. nexus -- storing artifacts 
 2. CD: Continues Deployment 
    1. Deploy Application [place the war/ear/.exe/dll(IIS)] - Java(Tomcat/weblogic/websphere etc), .net(IIS), python, R , Ruby(Rubyonrails), Nodejs 
    2. create enviornments using Ansible , Chef , Shell script , Slat, Puppet, Powershell DCS 
    3. Create Infrastracture using Terraform, ARM , CloudFormation -- VNet, subnet NSG, VM Storage 


## From Jenkins we need to run playbook on Ansible(ACS) Slave Machine 
### Steps: 
   1. Write playbook and Inventory ---> 
   2. push to githup repo
   3. from  Jenkins 
       1. Clone repository (ansible playbook and inventory) 
       2. in execute shell just give command ```ansible-playbook -i inv playbook.yml```  

## From Jenkins we need to run Terraform apply on Terraform Machine 
### Steps: 
   1. Write Terraform file -- vnet and subnets 
   2. push to githup 
   3. from Jenkins
      1. Clone repo -- Terraform files 
      2. in execute shell just give a command ```terraform init``` and ```terraform apply -auto-approve```  


### LabSetup CD with Ansible  
   1. Launch EC2 instance t2.micro 
   2. Login into EC2 and install Jenkins 
   3. Setup Jenkins Console 
   4. Launch one 3 EC2 Machine t2.micro and in one EC2 instance Install Ansible(ACS) and other 2 as Ansible Nodes. 
   5. Setup Ansible 
   6. Come to Jenkins UI and Configure Master Slave(ACS). ```ssh-copy-id ansible@privateofansiblecontrolserver``` 
   7. create job -- Freestyle 


### LabSetup CD with Terraform  
 1. Launch EC2 instance t2.micro 
 2. Login into EC2 and install Jenkins 
 3. Setup Jenkins Console 
 4. Launch one one EC2 Machine t2.micro and install Terraform.  
 5. Come to Jenkins UI and Configure Master Slave(Terraform). ```ssh-copy-id terraform@privateofansiblecontrolserver``` 
 6. create job -- Freestyle 
