echo "Starting Deployment !"
cd /Axway/apigateway/posix/bin
./projddeploy --dir=/tests --passphrase=pass --name=mypackage --type=fed --deploy-to --host-name=10.128.150.82 --port=8090 --user-name=admin --password==changeme --group-name=mygroup --includes server-1 
