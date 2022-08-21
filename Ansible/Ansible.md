## Ansible 
  1. Configuration Management tools 
     1. CM tools used for Managing the Servers - software installation, upgrade, Patches , Configuration and settings. 
     2. write once use many 
     3. CM Tools: 
         1. Ansible -- Push Model and Agnet less == Playbook in YML, connection using SSH 22 port
         2. Chef    -- Pull Model  and Agent based  == Cookbook in Ruby
         3. Puppet   -- Pull Model  and agent based  == Manifest in ruby
         4. Salt     -- Push Model  and Angent less
         5. PowerShell DSC -- Pull and Push 
         6. Shell  -- Not idempotent
         7. Powershell - Not idempotent 
     4. Idempotent: If you exute one time or N number of Times it gives same results
     5. Ansible: 
          1. Push Model 
          2. In Ansible We need 2 types Servers 
                1. Control Server - WorkStation 
                2. Nodes -- Where we deploy or patch , installation happen  


### Key Note
  1. Default inventory location ```/etc/ansible/hosts``` 
  2. ansible command for default Inventory ```ansible-playbook playbook.yml``` 
  3. We can use custom inventory eg myiventory ```ansible-playbook -i myinventory playbook.yml```  
  4. Addhoc command to ping  ```ansible -m ping all   and ansible -m ping -i myinventory all``` 
  5. Some Modules not Indempotent in ansible 
      1. command 
      2. Shell
      3. raw 

### Concepts
  1. Setup one more node - Centos 
  2. When conditions 
  3. Variables 
  
### When Condition
  1. write playbook for Apache2 on both platform Ubuntu and Centos 
  2. in ubuntu ```apt-get install apache2```
  3. in Centos ```yum install httpd```  

### Variables places
  1. Playbooks vars
  2. commandline
  3. Inventory file 
       1. host vars
       2. groups vars
  4. host_vars
  5. group_vars 
  please refer [ansible_variables](https://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html)


### Topics
1. Ansible Modules 
     1. apt
     2. yum
     3. file  --> file and directory
     4. copy
     5. template
     6. archive
     7. command, shell and raw --not idempotent 
     8. user and group 
     9. service or systemctl 
     10. dnf 
     11. win_chocoletey
     12. win_file
     13. win_copy 
     14. win_command
     15. line in file [clickhere](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/lineinfile_module.html)
     16. block in file [clickhere](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/blockinfile_module.html)
     17. replace[clickhere](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/replace_module.html)
    [please_refer_link](https://docs.ansible.com/ansible/2.9/modules/list_of_all_modules.html)
2. File and template 
       1. File contains static content 
       2. Template contains dynamic content 
3. Ansible roles  --- pending 
4. custom facts and when_failed --- Pending 
5. ansible config 
6. install multiple package at a time 
         1. Loop
         2. with_items 
         3. ["git","tree","wget"]  
7. Handler *
8. raw and command, shell module -- make it idempotent
9. Block in ansible [Clickhere](https://docs.ansible.com/ansible/latest/user_guide/playbooks_blocks.html)
10.  Ansible Tower [Clickhere](https://www.redhat.com/sysadmin/intro-ansible-tower#:~:text=Ansible%20Tower%20is%20the%20enterprise,and%20running%20in%20your%20environments.)
11.  tags 


#### 
  1. Virtual Machine 
     1. Azure Virtual Machine  -- Azure
        1. H/w -- cpu and ram 
        2. HDD disk 
        3. OS Image --eg ubuntu centos winodws
        4. authentication 
              1. username and password --> only in Azure
              2. SSH keys --> Azure Aws GCP 
        5. Networking [vnet in azure  vpc in aws and gcp]
            1. Subnet
            2. Security groups
     2. EC2(Elastic Compute cloud) -- AWS 
     3. Compute Engine -- GCP 


#### Make idempotent -- RAW, Shell, Command 
  1. Please refer stat.yml playbook 
  






  
    

  
