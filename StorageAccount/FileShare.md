## Azure File Share 
   1. Its part of the Storage Account 
   2. Its nothing network file share, we can access only within the network  
   3. requirement: 4 Vm's want to access and storing the Data in common location, HDD is not met my requirement beacuse HDD we can can't attach to multiple VM's at a time, what is right solution to my requirement? ===> NFS(Network File share) 
   4. In Azure Terminalogy 
        1. HDD in Azure Page Blob and Managed Disk(recomanded) (EBS in AWS)
        2. NFS means in Azure File Share (EFS in AWS) 


## Azure File Share 
   1. Create Vm
   2. create File Share 
   3. Mapp the file share to the VM


### File share 
   1. Its common location to access and retrive the data with in the network 
   2. File share we can connect to multiple devices at time
   3. Task 
      1. Connect Linux Vm to Fileshare 
      2. Connect Windows Vm to Fileshare
      3. Test
          1. upload any file into Fileshare and Check the Results 2 Vm's 
          2. upload any file into Windows Vm and check the Results fileshare and Linux Vm
          3. upload any file into Linux Vm and check the Results in File share and Windows Vm 
   ![FileShare](FileShare.png)
