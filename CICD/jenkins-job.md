## Notes
 1. Jenkins Home path ```/var/lib/jenkins``` 
 2. if you create any job in jenkins that will store in Workspace directory ```/var/lib/jenkins/workspace/jobname``` 
 3. without plug-in 
     1. Clone the code ```git clone https://github.com/wakaleo/game-of-life.git```
     2. build package ```mvn package``` 
 4. with Plugins 
     1. Clone the code ```https://github.com/wakaleo/game-of-life.git```
     2. build package ```package```  




## Crons 
  1. Jenkins not only for CICD. you can schedule anything or assign work eg: start Azure VM at 9 am and stop at 7 pm ---> 
    1. step 1: Create Jenkins Job 
    2. step 2: build trigger -- cron syntax == start job: every day execute  at 9 am and stop job: every day 7 pm 
    3. step: in execute shell: write az cli commands(shell script) --> if Machine in start then stop, else start 
  2. if you want restart application server 
      Manual: login vm and go to that direcory and execute the scripts, 
      Powershell Windows ---> write powershell commands with logic, if and loops -- file should with .ps1 
      Shell Script in Linux: ---> write linux commands with logic, if and loops  -- file should ext with .sh 
  3. Build with parameters [clickHere](https://plugins.jenkins.io/uno-choice/)

      



