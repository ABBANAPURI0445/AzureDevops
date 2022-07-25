## lab Setup 
 ### Ansible Control Server SetUp 
   1. Deploy one VM in azure name it as Ansible Control Server 
   2. Login into VM ```ssh Ansible@20.25.153.245```
   3. install Ansible 
      ```
       sudo apt update
       sudo apt install software-properties-common
       sudo apt-add-repository --yes --update ppa:ansible/ansible
       sudo apt install ansible
      ```  
   4. Create User (as root user)
      ```
      sudo -i or sudo su 
      adduser ansible 
      ``` 
   5. enable pwdbasedauthentication (open file using VI editor) save: Esc:wq and restart sshd Note: in Azure not require because azure support password authentication by default, in AWS and GCP you need to enable password based authentication. 
     ```
     vi /etc/ssh/sshd_config
     systemctl restart sshd
     ``` 
   6. Assign Sudo permssion 
      ``
      visudo or vi /etc/sudoers
      add user 
      ``` 
   7. Generate SSH keys from Ansible User 
       ```
       su Ansible 
       ssh-keygen
       ``` 
    
 ### Ansible Nodes
    1. We need to follow all above steps except step-3 and step-7 
    2. No need to install Ansible Server on Nodes, No need generate keys  


### Establish Connection b/w ACS to nodes: 
 1. login ACS(Ansible Control Server)
 2. share ssh keys (su ansible) to Nodes
 ```
  ssh-copy-id nodeusername@nodeIpaddress
  ssh-copy-id Ansible@10.1.0.5
 ```

### Verify Connection 
 1.  add node private ip address in /etc/ansible/hosts
 ```
  vi /etc/ansible/hosts 
 ```
 2.  verify the connection 
```
 ansible -m ping all
``` 
