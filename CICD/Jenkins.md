## CICD Engines 
  1. Jenkins ---> Cloudbees , JAVA 
  2. Azure DevOps ---> Azure  
  3. GitLab ----> GitLab 
  4. GitHub actions ---> GitHub
  5. Teamcity
  6. Bamboo ---> Atlassian 
  7. Circle 
  8. GoCD 
  9. AWS Devops ---> AWS 


### Jenkins LAB Setup 
  1. Linux/Windows/Mac 
  2. Java  java8/java11 
  3. Jenkins --- Cron job on staroids 
  4. Maven ---  Build the java application 
  5. Sonarqube/Vera code   --- Static code analysis -- check the code quality 
  6. Nexus/Jfrog Artifactory -- Storing war/ear/jar
  7. Ansible/Shell -- Deployment 


### Jenkins Installation 
  1. Ubuntu 20.04 
  2. Install java11 
      ```
      sudo apt-get update 
      sudo apt install default-jdk -y
      java -version
      ``` 
  3. install Jenkins  2.XX --- Automation tool 
      ```
      curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \ /usr/share/   keyrings/jenkins-keyring.asc > /dev/null
      echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \ https://pkg.jenkins.io/   debian-stable binary/ | sudo tee \ /etc/apt/sources.list.d/jenkins.list > /dev/null
      sudo apt-get update
      sudo apt-get install jenkins -y 
      ```  
   4. install Maven 
       1. download binary  into /opt directory [clickhere](https://archive.apache.org/dist/maven/maven-3/3.6.1/binaries/apache-maven-3.6.1-bin.tar.gz) 
       2. export PATH=/opt/apache-maven-3.6.1/bin:$PATH or use .profile for setting env varibale 
       3. mvn -v  


### JAVA Manual build using Maven 
  1. Clone java code spring pet-clinic ```git clone https://github.com/spring-projects/spring-petclinic.git``` 
  2. check the pom.xml and get into that directory 
  3. build code using Maven install ``` mvn package```  
  4. it will generate war/ear/jar file 
  5. war/ear deploy in Application Server Tomcat/Weblogic/Websphere etc..
  6. Deploy executable jar ```java -jar *.jar``` 
    
### EG-02
  1. Clone gameoflife java code ```git clone https://github.com/wakaleo/game-of-life.git``` 
  2. build using ```mvn install``` command
  3. install tomcat9 ```sudo apt-get install tomcat9 -y```
  4. deploy application in tomcat webapps directory ```cp game-of-life.war /var/lib/tomcat9/webapps/``` 

