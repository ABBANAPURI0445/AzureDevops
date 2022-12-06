## Concepts
  1. git ---> VCS
  2. github --> Remote Repo
  3. Build ---> JAVA = ANT, MAVEN, GRADLE  .NET = MSBUILD + NUGET 
  4. SONAR  --> SONARQUBE
  5. ARTIFACT --> NEXUS -->it will generate url 
  6. Deploy Application in Servers --> Ansible Module get_url 
       1. cleanup and backup existing war file 
       2. Deploy latest war file 
       3. restart 


### Jenkins Concepts 
  1. Backup & Restore  ---> thin backup Pluging (FULL BACKUP and Differential Backup) or Simply copy Workspace 
  2. Credentials  ---> Secure ur's data ```docker login -u devdocker -p Asdf@456```  
       1. You can integrate Azure Keyvault 
       2. docker_username = devdocker
       3. docker_password = Asdf@456 
       4. ```docker login -u docker_username -p docker_password``` 
  3. Build Triggers  ---> When do you want build 
         1. Build Periodiacally --> it works on Cron 
         2. POLL SCM
         3. Webhooks ---> 
  4. Dicards builds
  5. SMTP  --> trigger mail if fail or success or both 





### VCS   
### MAVEN   