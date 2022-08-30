## Ansible 
 1. What is Ansible(CM): IT Automation Tool - You can automate anything , if it possible you can automate just we need commands 
 2. its Push Model
 3. Ansible setup 
 4. Terminalogy: 
      1. Playbook
      2. tasks
      3. hosts
      4. handlers
      5. notify 
 5. when condition 
 6. how to install multiple packages [clickhere](https://docs.ansible.com/ansible/latest/user_guide/playbooks_loops.html)
      ```
      - hosts: all
        become: yes 
        tasks: 
        - name: install git tree wget
          apt: 
            name: ["git","tree","wget"]
            state: present 
      OR

      - hosts: all
        become: yes
        tasks:
        - name: install multiple packages 
          apt: 
            name: {{item}}
            state: present 
          loop: 
           - git
           - tree
           - wget  

       OR
       - hosts: all
        become: yes
        tasks:
        - name: install multiple packages 
          apt: 
            name: {{item}}
            state: present 
          with_items: 
           - git
           - tree
           - wget 
      ```
    7. Ansible module 
    8. Ansible role 
    9. tags
    10. debug ansible 
   