## Storage Account 
   1. How to create Storage account -- Public or Private 
   2. How to create Container -- Access level (public or private) 
   3. How to create Blob 
## Access Contenet outside Network 
  1. Container is in private access level, I upload one document pdf now I want access Pdf document from outside network, How its Possible? 
    1. its Possible using SAS Key 
    ```
    https://practicesanew.blob.core.windows.net/?sv=2020-08-04&ss=b&srt=sco&sp=rwdlacitfx&se=2022-05-01T11:43:55Z&st=2022-04-01T03:43:55Z&spr=https&sig=YiEFE1klaMeOtXlLTsOFK%2B1hyqbPXE9e96iVieaGl9A%3D


    https://practicesanew.blob.core.windows.net/practice/Naresh_feb_internetbill.pdf?sp=r&st=2022-04-01T03:45:28Z&se=2022-04-01T11:45:28Z&spr=https&sv=2020-08-04&sr=b&sig=IvvpGWtJJythjv%2BBDVGbP3RttNaTgjpkJhNnBtgZhIQ%3D
    ``` 
### Access Data Securely 
   1. Access Keys
   2. SAS Keys (Access Policy)
   3. Azure Active Directory 

### Data Redundancy 
  1. LRS 
  2. ZRS
  3. GRS 
  4. GZRS 

### Access Tiers 
  1. Hot:  
     1. We pay more for Storage and less for Access 
     2. If you want access and modify date more frequently the we need to use HOT access Tier 
  2. Cool:  (30 days) 70
     1. We Pay more for Access and Less for Storage
     2. if you want access data in-frequently and store Backups the we need to use Cool
    
  3. Archive: (180 days)  
     1. its cheap price compare to Hot and Cool  
     2. if you don't want access data then you can use archive Access Tier
     3. in Archive tier the data will not be able to access 
     4. if you want to access data in Archive 
            1. first we need change Access tier(Hot or Cool) and access the data  
### Lifecycle Management  
   1. its all about changing access tier automatically 
   2. if blob is not modified in last 30 days, You can put a condition for changing access tier to optimize the billing(pricing) 




 