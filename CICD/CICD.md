### Terminalogy and Technology 
  1. Version control System --> git
  2. Remote repository --> github 
  3. static code analysis --> sonarqube and veracode
  4. artifactory --> Jfrog artifactory and nexus war,ear and jar
  5. code build tool --> maven, ant , msbuild 
  6. unit test --> test case apply on small portion code
  7. continues integration and continues delivery/deployment (CICD)
  8. Agile --> faster 

### CICD oldage Process
  1. How the Software development process happen in olden days 
      1. Gathering requirement ---> finance and users , User Interface , downtime, latency 
      2. planing --> java spring boot, maven, Sq, jfrg, jenkins,git,github,Ansible,Terraform,ARM Template, web server- nginx, Application server - Tomcat or Websphere or Weblogic , and budget planing 
      3. building --> Developers write code build once whole code is complited and move to testing 
      4. Test code --> if Test failed code push developer send errors. if Test is Success move to deployment 
      5. deployment: Deploy application in NPRD and PROD using Ansible or any CM tool
      6. Its taking too much time
      7. not time to delivery Market
      8. Application eficiency not touch the thresold 

### Agile Process 
  1. DevOps follows agile process, its fast 
  2. it gives continues deployment and continues feedback, finding issues or errors in code is much more easier 
  3. in Agile process the Application Developemnt process breakit down into multiple sprints 
  4. Sprint the work happen in 10-15 days 
  5. each day component breakit down into multiple peices 
  6. Developers develop the piece and build the code using maven and send to testers. Testers test code if failed send back to developers, developer easily fix the code - beacuse its happing today and small portion code  

### JAVA Artifacts 
  1. WAR ==> Web Archive (Web Application), tomcat, websphere, weblogic, glass fish, jetty....
  2. EAR ==> Enterprice Archive. Weblogic and websphere
  3. JAR  ===> JAR is required to work WAR and EAR, java -jar ***.jar
### Stages 
  1. Developers write code and test locally if ok then push to remote repository(github).
  2. clone the code (developer code)
  3. run the build using MAVEN, it generate artifact --> WAR EAR JAR
  4. for code quality use Sonarqube or veracode 
  5. Store the artifact -- Jfrog or Nexus
  6. Deployment 
       1. DEV ENV  -- Beacuse developers need to test, How the Application works 
       2. Test ENV -- Testers apply multiple test cases on Application 
       3. NPRD or UAT ---- Local production 
       4. Production  



##### APPlication requirement 
   1. DEV --> Web servers(20) and app servers, DB Servers and other services 
   ```
   -- Infrastructure 
   the infrastracture you can create in On-prem: VM ware, Hyper-V 
   OR 
   You can create infrastracure in Public CLoud  
   AWS 
   AZURE -- Terraform 
   Installation and configuration -- Ansible 
   Deployment --- Ansible 
   deploy war file(use get_url ansible module) ---> download the war file from artifactory and deploy into Server 
   GCP
   ```` 
   1. Test --> Web servers and app servers, DB Servers and other services
   2. NPRD  ---> Web servers and app servers, DB Servers and other services
   3. Prod  ---> Web servers and app servers, DB Servers and other services

