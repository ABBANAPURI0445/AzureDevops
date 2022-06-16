## Routing
  1. Azure Loadbalancer 
       1. Basic  --> within avalability set, free 
       2. Standard --> within region, price 
  2. Application Gateway with WAF 
  3. Azure Traffic Manager
  4. Azure Firewall  


  ## Basic Loadbalancer
    1. FrontendIp
    2. healthProbe
    3. Backendpool
    4. LB rules


### Steps(Basic SKU)
  1. resource group 
  2. Networking and subnet 
  3. Public IP & NIC 
  4. NSG
  5. create VM and install tomcat9 --> Terraform  
  6. create LB (using terraform) 



  1. Terraform plan --> only exute the plan
  2. terraform apply --> 2 things 1. excute plan(timetaking) 2. excute apply 


  tip:
    1. terraform plan -out=plan.out(1. excute plan)
    2. terraform show plan.out (optional)
    3. terraform apply plan.out (1. excute apply) 
 



  