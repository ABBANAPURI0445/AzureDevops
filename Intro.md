## Introduction: 
   1. Private Cloud: the Data centre host within Organization - eg: Banks 
        1. Private Cloud providers - VM Ware, Openstack, Azure stack, Oracle etc 
        2. How to access resources in private cloud - Via Internal network, VPN  
   2. Public Cloud: The Data centre Host in one purticlur location - this location decided by Public Cloud Provider 
           AWS - Mumbai(3) , Azure(Mumbai, Pune, Chennai) 
        1. Public Cloud Providers - AWS, Azure, GCP, Oracle, ALibaba 
        2. How to access resources in Public cloud - Via Internet  

## Virtual Machine:
   1. Physical Machine: its nothing one hardware and one Software(Operating System) eg: Personal Computer
   2. Virtual Machine: one hardware and Multiple Operating Systems - By Using Hyper-V technolgy  
   

## Azure Cloud Engineer Skils: 
   1. Linux and Windows basic admin - System admin
   2. We should have Basic network admin   

## Azure/AWS/GCP Cloud Concepts: 
   1. Compute - Virtual machine
   2. Storage
   3. Database 
   4. Networking
   5. Monitoring
   6. User Managemnet  

## Prerequisites: 
   1. you should have Decent laptop - i3, 4gB RAm
   2. Install chocolatey
   3. Gitbash, putty, mobaextrm
   4. Vscode 
   5. Azure free tier Account (Credit card)
      1. 15000 rupes in Azure Account (first Month) 

## Instal Choco 
   1. paste below command in Powershell(open as Admin)
      ```
      Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
      ``` 
## Windiws Virtual machine 
   1. create Winodws VM - enable 3389 - RDP(Remote Desktop Protocal)
   2. login into Windows VM - Remote Desktop connection   mstsc /v:20.185.197.155:3389
   3. delete VM if not require

## Linux Virtual Machine 
   1. create Linux VM - 22 - SSH(Secue Shell) 
   2. login into Linux Vm(Ubuntu, RedHat, fedora, centos) ```ssh Naresh@publicip```
   3. Delete Vm if nit require  

   





