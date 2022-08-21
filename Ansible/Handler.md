## Handler: 
  1. Write once notify many times 
  2. rather than writting many tasks eg: In tomcat playbook We written restart or start task many times, why we need to write many times use ```Handler``` concept
  3. not only restart start what ever you feel write many task again and again just put in handler use whereever its require  
  4. Handlers execute only if task execute 
  5. by using Handlers  some raw mdoules - we make Idempotent  

### Syntax
  ``` 
  ---
  - hosts: all
    become: yes
    tasks: 
    - name: install nginx on ubuntu
      apt: 
        name: nginx
        state: present 
      notify: restart nginx
    
    handlers: 
    - name: restart nginx 
      service: 
        name: nginx 
        state: restarted
   ``` 
### Make Idempotent - Ansible raw module [shell, command,raw] 
  ```
  --- 
  - hosts: all
    become: yes
    tasks: 
    - name: install something 
      file: 
        path: /home/ansible/something
        state: touch  
      notify: change the permissions  
    handlers: 
    - name: change the permissions 
      shell: |
        sudo chgrp -R tomcat /opt/tomcat
        sudo chmod -R g+r /opt/tomcat/conf 
        sudo chmod g+x /opt/tomcat/conf 
        sudo chown -R tomcat /opt/tomcat/webapps/ /opt/tomcat/work/ /opt/tomcat/temp/ /opt/tomcat/logs
   ```
  
    


