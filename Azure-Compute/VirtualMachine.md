## Virtual Machine
   1. Create Linux Virtual Machine 
   2. Connecting Linux Virtual Machines  
    1. User name and Password --> insecure way
    2. Keybased ---> Secure way 
          1. Publickey --> its on Vm
          2. Privatekey --> with You,--> Assymetric Encryption 
   3. Create WinodwsMachine
   4. Connecting Winodws Machine 
   5. Pricing of Virtual Machine 
        1. Compute Price--CPU and RAM
        2. Disk and transancation 
        3. Public Ip  
    

1. production Vm need to run always --> You can choose Reserverd VM's 
2. Non Production no need to run always --> You can choose Pay-as-you-go  
   1. NonProd VM's every mon-friday Start at 9pm and stop at 7pm == 10h --> Schedule task Winodws and Cron jobs in Linux 
   2. No need to start Sat&sunday 
   3. 10*30 = 300hours


### Vm State
   1. Start
   2. Stoped/deallocate: Will Impact on Ip address and Temp Disk: it change IP address and Delete and create Temp Disk
   3. Restart: not impact on Ip address and temp disk 

### Custom extension script 
   1. you can install or anything without login into Machine  
   2. but we need Powershell or shell script file, these need to upload into storage account 
   3. Now you can create custom extension, it present in Virtual machine blade 

### Cloud init: 
  1. [cloudinit](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/tutorial-automate-vm-deployment) 

### Run Command: 
  1. You can run any command without login into Server 

### Boot Diagnostics: 
   1. all boot logs will be in storage account
### Serial Console: 
   1. login into Vm in portal itself 

### Pending: Covered 
   1. create and attach managed disk in linux [mount](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/attach-disk-portal)
   2. unmanaged disk --> create vm with Gen1  




#### Pending 
   1. App Service 
 
   