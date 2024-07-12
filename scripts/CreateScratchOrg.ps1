echo "Create a scratch org"
sfdx force:org:create -a HelloWorld -f config/project-scratch-def.json -s

echo "Set Lightning debug mode and VisualForce development mode"
sfdx force:apex:execute -f scripts/SetDebugModes.apex

echo "Push source if present"
sfdx force:source:push

echo "Assign permission set if present"
sfdx force:user:permset:assign -n HelloWorldSet
