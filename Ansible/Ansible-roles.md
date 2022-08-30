## Roles(ansible galaxy): 
  1. when you create ANsible Roles - automatically its create structure 
      1. var dir - main.yml 
      2. tasks - main.yml 
      3. handlers - main.yml 
      4. file
      5. Template
  2. How to  Use Someone Ansible galaxy roles from Ansible galaxy 
      1. Java 
          1. install ansible galaxy role for java -- available on Ansible galaxy page 
             ```ansible-galaxy install geerlingguy.java``` 
          2. use role in playbook - we have to read readme file in ansible galaxy -- refer java-role.yml playbook 

Note: If you want to use someone roles you should compltely read readme document -- before that You have to do in manuall way then only You understand some role and playbook 
          
  3. how to write Anisble galaxy roles 
     1. create roles
     2. and write role
     3. place role in playbook 