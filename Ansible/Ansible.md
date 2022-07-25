## Ansible 
  1. Configuration Management tools 
     1. CM tools used for Managing the Servers - software installation, upgrade, Patches , Configuration and settings. 
     2. write once use many 
     3. CM Tools: 
         1. Ansible -- Push Model and Agnet less == Playbook in YML, connection using SSH 22 port
         2. Chef    -- Pull Model  and Agent based  == Cookbook in Ruby
         3. Puppet   -- Pull Model  and agent based  == Manifest in ruby
         4. Salt     -- Push Model  and Angent less
         5. PowerShell DSC -- Pull and Push 
         6. Shell  -- Not idempotent
         7. Powershell - Not idempotent 
     4. Idempotent: If you exute one time or N number of Times it gives same results
     5. Ansible: 
          1. Push Model 
          2. In Ansible We need 2 types Servers 
                1. Control Server - WorkStation 
                2. Nodes -- Where we deploy or patch , installation happen  

