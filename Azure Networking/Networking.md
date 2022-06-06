## Azure Networking: Vnet(Virtual Network)
   1. What is IP 
   2. CIDR and Subnet Mask 
   3. Network Vnet 
   4. Subnet and NIC 
   5. Vnet Peering 
   6. VPN Gateway (Optional)
   7. Azure Load Balanacer (Basic or Standard)  --> Layer 4 lb (TCP/IP and Port)
   8. Application Gateway and WAF ---> Layer 7 lb (http/https) path based routing 
   9. Azure Traffic Manager ---> Load balancer(multiple regions)
   10. Azure Firewall  ---> Secure conectivity from azure to outside
   11. Secure and Monitor Network (ampls)
   12. Secure Connection 
        1. Private endpoint(resource to resource connection security within th n/w)
        2. Private link Service(resource to resource connection security outside th n/w)


## How to Deploy Any Azure resources 
   1. Virtual Machine  Basic requirements 
       1. Vnet and Subnet, NSG
       2. Image
       3. Region and Az
       4. User name and Password 

### Deploy Virtual Machine In Custom Virtual Network 
   1. create Virtual Network 
      1. resource group
      2. region 
      3. CIDR Block
   2. Subnets 
      1. Vnet
   3. Create Network Security Groups and NIC  
      1. create nsg 
      2. add nsg rules
   4. Deploy Virtual Machine in SubnetA 



