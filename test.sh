echo "Starting Deployment !"
pwd
${env.JOB_NAME}
cd /opt/Axway-7.7.0/apigateway/posix/bin
pwd
echo "Starting Package creation"
./projpack --create --dir=/jenagent/workspace/${env.JOB_NAME} --passphrase-none --name=deploymentpackage --type=fed --add ./cfd17dd7-0637-438a-8d97-a8d522d8fd44 --projpass-none
./projdeploy --dir=/jenagent/workspace/${env.JOB_NAME} --passphrase-none --name=deploymentpackage --type=fed --deploy-to --host-name=10.128.150.82 --port=8090 --user-name=admin --password=changeme --group-name=mygroup --includes server-1
echo "Deployment Completed!"
