#!/bin/bash

echo "creating containers(N)"
read N
sleep 2;

for i in `seq $N`
do
	echo "=============================="
    	echo "Creating chef-server$i container.."
    	sleep 1
    		docker run --name chef-server$i -d -it swapnilhub/chef-image:latest /bin/bash
    	echo "chef-server$i container has been created!"
	echo "=============================="
done

		docker inspect --format '{{.NetworkSettings.Networks.bridge.IPAddress}}' `docker ps -q` >Container_IP.txt
		docker inspect --format='{{.Name}}' $(docker ps -q --no-trunc) | cut -c2- > Container_Name.txt 

		

