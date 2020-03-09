#!/bin/bash

#create scratch org
sfdx force:org:create -f config/project-scratch-def.json -a debuggerOrg --setdefaultusername -d 1

#install maps package
sfdx force:package:install --package 04t1n0000028Nmb -w 20


sfdx force:source:push 

sfdx force:user:permset:assign -n Lightning_Map_Admin

sfdx force:org:open

#sfdx force:data:tree:import --plan sfdx-out/plan.json

#Run Apex commands as needed
#sfdx force:apex:execute -f config/create-demo-data-setup.apex