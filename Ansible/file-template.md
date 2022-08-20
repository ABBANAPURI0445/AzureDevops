### File module
  1. example for file module 
   ```
   ---
   - hosts: all
     become: yes 
     tasks:
     - name: copy file from ACS to all nodes using simple file
       copy: 
         src: file.txt
         dest: /home/ansible/something.txt 
     - name: copy static content to node
       copy: 
         src: 
    ```
### Template
   1. copy content from ACS to nodes, it also copy dynamic content (its read facts and variables)
   2. the file extension should be .j2
   3. eg for Template
    ```
    ---
    - hosts: all
      become: yes
      tasks: 
      - name: copy dynamic content 
        template: 
          src: file
          dest: /home/ansible/dynamic
    ``` 

         