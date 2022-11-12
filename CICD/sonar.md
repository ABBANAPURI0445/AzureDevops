# Sonarqube Setup

SonarQube is an open-source static testing analysis software, it is used by developers to manage source code quality and consistency.
## Prerequisites
1. Need an EC2 instance (min t2.small)
2. Install Java-11
  ```
   apt-get update   
   apt  list | grep openjdk-11  
   apt-get install openjdk-11-jdk -y   
  ```

## Install & Setup Postgres Database for SonarQube
1. Install Postgres database   
   ```
    sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'  
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
    sudo apt-get update
    sudo apt-get -y install postgresql 
   ```

1. Set a password and connect to database (setting password as "admin" password)
   ```
    sudo passwd postgres
    su - postgres
   ```

1. Create a database user and database for sonarque 
  ```
  createuser sonar  
  psql
  ALTER USER sonar WITH ENCRYPTED PASSWORD 'admin';
  CREATE DATABASE sonarqube OWNER sonar;
  GRANT ALL PRIVILEGES ON DATABASE sonarqube to sonar;
  ``` 

1. Restart postgres database to take latest changes effect 
  ```sh 
  systemctl restart postgresql 
  systemctl status postgresql
  ```

  ==========================================

 ## SonarQube Setup

2. Download [soarnqube](https://www.sonarqube.org/downloads/) and extract it.   
  ```
  wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.2.46101.zip
  apt install unzip
  unzip sonarqube-8.9.2.46101.zip
  mv sonarqube-8.9.2.46101 sonarqube
  ```

1. in `/opt/sonarqube/` Update sonar.properties with below information `vi /opt/sonarqube/conf/sonar.properties` 
  ```
  sonar.jdbc.username=sonar
  sonar.jdbc.password=admin 

  #sonar.jdbc.username=sonar
  #sonar.jdbc.password=admin
  #sonar.jdbc.url=jdbc:postgresql://localhost/sonarqube
  #sonar.search.javaOpts=-Xmx512m -Xms512m -XX:MaxDirectMemorySize=256m -XX:+HeapDumpOnOutOfMemoryError
  ``` 

1. Create a `vi /etc/systemd/system/sonarqube.service` file start sonarqube service at the boot time 
  ```
  [Unit]
  Description=SonarQube service
  After=syslog.target network.target

  [Service]
  Type=forking
  User=sonar
  Group=sonar
  PermissionsStartOnly=true
  ExecStart=/opt/sonarqube/bin/linux-x86-64/sonar.sh start 
  ExecStop=/opt/sonarqube/bin/linux-x86-64/sonar.sh stop
  ExecStop=/opt/sonarqube/bin/linux-x86-64/sonar.sh restart
  StandardOutput=syslog
  LimitNOFILE=65536
  LimitNPROC=4096
  TimeoutStartSec=5
  Restart=always

  [Install]
  WantedBy=multi-user.target
  ```

1. Add sonar user and grant ownership to /opt/sonarqube directory 
  ```sh 
  useradd -d /opt/sonarqube sonar   --- user creation for specific home direct 
  chown -R sonar:sonar /opt/sonarqube 
  ```

1. Reload the demon and start sonarqube service 
  ```sh 
  systemctl daemon-reload 
  systemctl start sonarqube.service 
  ```


### Sonar 
  1. Take ubuntu Machine
  2. install java
  3. install postgress
  4. Install sonarqube 
  5. open sonar in browser: http:/publiip:9000  username/password: admin/admin

### Sonarqube Integrate with jenkins 
  1. goto Jenkins UI 
  2. Manage jenkins 
  3. install sonarqube plugin
  4. go Manage Jenkins --> configure system and add all details about sonarqube 
      1. Token: b41607e716d57287470e85e1f11d90ee5638e3bf  
      2. sonar url: http://ec2-50-17-129-41.compute-1.amazonaws.com:9000/ 
      3. Name: sonaqube 
