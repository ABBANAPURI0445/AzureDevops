## CI Stages: 
   1. Clone SCM(source code). From the Remote Repo's 
   2. Unit Test -- test case apply on small portion of Code -- Login. ```mvn test``` 
   3. Build Stage.  **maven**/Ant/Gradle its generate artifact war/ear/jar exe/dll(MSBuild). 
   4. CodeQuality Analysis. **Soanrqube**/Vera code.
   5. Scaning artifact - Before storing artifact Into Jfrog/Nexus.  Fortify 
   6. Storig Artifact. Jfrog/**Nexus** -- or You can store in Shared device.  


## CI LabSetup
  1. For Remote repository - Github/BitBucket/GitLab/AzureRepo/AWScodecommit/Perforce. 
      1. In Jenkins need to integrate Repository using Pluging. 
  2. Build Stage: 
      1. Take EC2 and install Maven -- Configure Master-slave 
  3. Sonarqube: 
      1. Take one Ec2 Machine and install Sonarqube. 
      2. Sonarqube integrate with Jenkins using Plugin. 
  4. Nexus. 
      1. Take Ec2 machine and install Nexus. 
      2. Nexus integrate with jenkins using plugin. 