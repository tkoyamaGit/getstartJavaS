echo "For batch files use the call syntax so it does not abort with each command"
echo "Create a scratch org"
call sfdx force:org:create -a HelloWorld -f config/project-scratch-def.json -s

echo "Set Lightning debug mode and VisualForce development mode"
call sfdx force:apex:execute -f scripts/SetDebugModes.apex

echo "Push source if present"
call sfdx force:source:push

echo "Assign permission set if present"
call sfdx force:user:permset:assign -n HelloWorldSet
