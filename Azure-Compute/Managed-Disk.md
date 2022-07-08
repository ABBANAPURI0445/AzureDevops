## Managed Disk 
  1. Its Completelty managed by Azure
  2. Its Support High Availability  

## its additional HDD Disk 
  1. create and attch managed disk to the VM
  2. Mount to The Virtual machine 
### Disk Types 
  1. HDD Managed Disk 
      1. Cheap and slow 
      2. 32,767 GB of Storage  
      3. HDD Type Disk generally we use in Backup Environmemnt, non critical Applications
      4. IOPS: 2000
      5. Throughtput: 500
  2. Standard SSD 
      1. Faster and Avg IOPS and Throughtput 
      2. 32,767 GB of Storage
      3. IOPS: 6000
      4. Throughtput: 750 MB/s
  3. Premium SSD
      1. Much faster than Standard SSD
      2. Use case: Production Environment and business critical Application
      3. 32, 767 GB of Storage 
      4. IOPS: 20000 
      5. Throughtput: 900 MB/s 



### SnapShot: 
   1. Backup of Disk 
   2. You can restore the DataDisk using Sanpshot 
