## Tomcat Playbook 
1. ```sudo apt install openjdk-8-jdk -y```  Convert into Ansible task 
   ```
   - name: install java8 on ubuntu 
     ansible.builtin.apt:
        name: openjdk-8-jdk
        state: present
   ``` 
2. export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64 convert in ansible task 
  ```
  - name: add java env variable 
    ansible.builtin.lineinfile:
        path: /etc/environment
        line: JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
        create: yes 
  ``` 
3. create group in ansible 
   ```
   - name: Ensure group "somegroup" exists
     ansible.builtin.group:
       name: tomcat
       state: present
   ``` 
4. create user tomcat and add into tomcat group 
   ```
   ansible.builtin.user:
    name: tomcat
    state: present
    home: /opt/tomcat
    shell: /bin/false 
    group: tomcat
    ``` 
5. create directory /opt/tomcat 
  ```
  ansible.builtin.file:
    path: /opt/tomcat
    state: directory
    mode: '0755'
    recurse: yes
    owner: tomcat
    group: tomcat
  ``` 
6. download tomcat binary and unachive the binary
  ```
  ansible.builtin.unarchive:
    src: https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.37/bin/apache-tomcat-9.0.37.tar.gz
    dest: /opt/tomcat
    remote_src: yes 
    extra_opts:
     - --strip-components=1
  ``` 
7. chmod of conf g+rx 
   ```
   ansible.builtin.file:
    path: /opt/tomcat/conf
    state: directory 
    mode: g+rx
    recurse: yes
    ``` 
8. insert service file into  /etc/systemd/system/tomcat.service
   ```
   ansible.builtin.copy:
    src: tomcat.service
    dest: /etc/systemd/system/tomcat.service
   ```
9. demon-reload
   ```
   command: sudo systemctl daemon-reload
   ```
10. restart tomcat and enable tomcat
   ```
    ansible.builtin.systemd:
      name: tomcat
      state: restarted
      enabled: yes
   ```
11. Configure Tomcat Web Management Interface user - insert tomcat-users.xml content in /opt/tomcat/conf/tomcat-users.xml 
 ```
 ansible.builtin.copy:
    src: tomcat-users.xml
    dest: /opt/tomcat/conf/tomcat-users.xml
 ``` 
12. Manager app permissions /opt/tomcat/webapps/manager/META-INF/context.xml, we comment 2 lines 
 ```
  ansible.builtin.copy:
    src: context.xml
    dest: /opt/tomcat/webapps/manager/META-INF/context.xml 
 ``` 
13. Host Manager app permissions 
 ```
  ansible.builtin.copy:
    src: context.xml
    dest: /opt/tomcat/webapps/host-manager/META-INF/context.xml 
 ``` 
14. restart tomcat 
 ```
 ansible.builtin.systemd:
      name: tomcat
      state: restarted
 ```

   

