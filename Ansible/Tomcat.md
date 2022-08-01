###  Tomcat9 Installation in ubuntu 
  1. First Install manually: Before write any automation need to do with manual steps
  2. Create ubuntu 20.04 and login 
  3. follow the [docs](https://www.digitalocean.com/community/tutorials/install-tomcat-9-ubuntu-1804) 
    ```
    sudo apt update
    sudo apt install openjdk-8-jdk -y 
    export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
    echo $JAVA_HOME 
    sudo groupadd tomcat
    sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
    cd /tmp
    curl -O [link_here](https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.37/bin/apache-tomcat-9.0.37.tar.gz)
    sudo mkdir /opt/tomcat
    sudo tar xzvf apache-tomcat-*tar.gz -C /opt/tomcat --strip-components=1
    cd /opt/tomcat
    sudo chgrp -R tomcat /opt/tomcat
    sudo chmod -R g+r conf 
    sudo chmod g+x conf 
    sudo chown -R tomcat webapps/ work/ temp/ logs/ 
    sudo nano /etc/systemd/system/tomcat.service
    sudo systemctl daemon-reload
    sudo systemctl start tomcat
    sudo systemctl status tomcat 
    sudo systemctl enable tomcat 
    sudo nano /opt/tomcat/conf/tomcat-users.xml 
    sudo nano /opt/tomcat/webapps/manager/META-INF/context.xml
    sudo nano /opt/tomcat/webapps/host-manager/META-INF/context.xml
    sudo systemctl restart tomcat
    ```

