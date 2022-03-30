## Storage Account 
   1. Storage as a solution in Azure
   2. you store any kind of data eg: images, pdf , videos etc

### Data Storage types 
   1. Container 
      1. its nothing but root folder 
      2. in container we can create more blob sub root folder(binary large object), We have 3 types of blobs 
         1. Block blob 
             1. we can store images, documents, videos etc
         2. Page blob 
             1. its nothing hdd disk, we can attach Virtual Machine
         3. Append blob
             1. if you want append data frequently eg: we can store logs this is the best example for append blob 
   2. File share 
   3. Table 
   4. Queue 


## How to Access Storage Account Securely 
   1. Access keys (Full Access  - We don't have control to restric the access ) --> Less Secured
   2. SAS (Shared Access Signature)  --> 
        1. We can control to restric the access  ie read, write etc 
        2. if I generate SAS key with Write and Read access on Blob  
             1. Access Policy --> Control restric access even after generate the SAS Key 
   3. Active directory (trusted way) 
       1. add role assignment to user 
           1. Storage Account Contributor
           2. Storage Blob Data Contributor
           3. Storage Blob Data Owner   
## Performance tier
   1. Standard 
   2. Premium  
   [Click here](https://docs.microsoft.com/en-us/azure/storage/common/storage-account-overview?toc=/azure/storage/blobs/toc.json) 

### Storage Redundance: 
   1. LRS(Locally redundant storage (LRS) replicates your data three times within a single data center in the primary region) that means stored in 3 diffrent racks 
      1. If DC outage entire, data centre Az
          1. Power outage 
          2. Network issue
          3. disaster 
   2. ZRS(Zone-redundant storage (ZRS) replicates your Azure Storage data synchronously across three Azure availability zones in the primary region) 
   3. GRS(Using LRS )
   4. GZRS (using ZRS)
   [data redundancy for Storage Account](https://docs.microsoft.com/en-us/azure/storage/common/storage-redundancy?toc=/azure/storage/blobs/toc.json)


## Pricing 
   1. if you upload 1 gb file in storage account -- with LRS it create 3 copies 
      ```
      3*1GB = 3GB
      ``` 
   2. if you upload 1 gb file in storage account -- with ZRS it create 3 copies  
      ```
      3*1GB = 3GB and Data transfer charge(across the AZ in single region)
      ``` 
   3. if you upload 1 gb file in storage account -- with GRS it create 3 copies
      ```
      6*1GB = 6GB and Data transfer charge(across the region)
      ```