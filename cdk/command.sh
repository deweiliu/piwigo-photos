# Output Template YAML
npm run synth-yaml;

# Fix the CDK bug https://github.com/aws/aws-cdk/issues/15025
sed -I.bak -e 's/EfsVolumeConfiguration/EFSVolumeConfiguration/g' -e 's/            FileSystemId:/            FilesystemId:/g' 'cdk.out/template.yml';

# Use the updated template to deploy
aws cloudformation create-stack --stack-name PiwigoPhotos --template-body file://cdk.out/template.yml --capabilities CAPABILITY_IAM --tags Key=service,Value=piwigo-photos;
