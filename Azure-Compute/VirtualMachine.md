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