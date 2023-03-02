deploydev:
	aws cloudformation deploy --template-file template.yml --stack-name dev-jenkins-onboarding --parameter-overrides Stage=dev ProjectName=jenkins-onboarding --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM
deployqa:
	aws cloudformation deploy --template-file template.yml --stack-name qa-jenkins-onboarding --parameter-overrides Stage=qa ProjectName=jenkins-onboarding --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM
deploydemo:
	aws cloudformation deploy --template-file template.yml --stack-name demo-jenkins-onboarding --parameter-overrides Stage=demo ProjectName=jenkins-onboarding --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM
deployprod:
	aws cloudformation deploy --template-file template.yml --stack-name prod-jenkins-onboarding --parameter-overrides Stage=prod ProjectName=jenkins-onboarding --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM
all: deploydev deployqa deploydemo deployprod
deletedev: 
	aws cloudformation delete-stack --stack-name dev-jenkins-onboarding
deleteqa: 
	aws cloudformation delete-stack --stack-name qa-jenkins-onboarding
deletedemo: 
	aws cloudformation delete-stack --stack-name demo-jenkins-onboarding
deleteprod: 
	aws cloudformation delete-stack --stack-name prod-jenkins-onboarding
deleteall: deletedev deleteqa deletedemo deleteprod