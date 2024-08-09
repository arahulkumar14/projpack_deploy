echo "Starting Deployment !"
pwd
ls
cd /opt/Axway-7.7.0/apigateway/posix/bin
ls
pwd
./projdeploy --dir=/jenagent/workspace/proj_pack_deployment --passphrase=none --change-pass-to-none --name=deploypackage --type=fed --deploy-to --host-name=10.128.150.82 --port=8090 --user-name=admin --password==changeme --group-name=mygroup --includes server-1 
