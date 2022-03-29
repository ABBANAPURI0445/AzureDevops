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
   1. Access keys (Full permissiom - user can do anything)
   2. SAS (Shared Access Signature)  --> 
   3. Active directory (trusted way) 
       1. add role assignment to user 
           1. Storage Account Contributor
           2. Storage Blob Data Contributor
           3. Storage Blob Data Owner   

