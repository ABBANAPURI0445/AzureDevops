## Virtual Machine Scale Set: 
   1. When traffic incrase vm will be scale up
   2. When traffic decrease vm will be scale down 
   3. VMSS scale up and scale down depends on metrcis (CPU, RAm, IOPS, throughts, storage)
       1. when vm hitting 80 Percentage of CPU continues for 5 min create 1 or more machine  
       2. when vm hitting less than 40 percent of CPU for 5 min, delete 1 machine 