#!/bin/bash

echo "Enter no of images(N)"
read N

sleep 2

for i in `seq $N`
do 
	docker build -f /home/swapnil/Documents/Devops/DOCKERFILE_PRACTICE/Create_multiple_images_using_Dockerfile/Tomcat_Dockerfile -t=swapnilhub/tomcattest$i .
             
echo "tomacat images created $i"


	docker build -f /home/swapnil/Documents/Devops/DOCKERFILE_PRACTICE/Create_multiple_images_using_Dockerfile/Ubuntu_Dockerfile -t=swapnilhub/ubunt-test$i .

echo "Ubuntu images created $i"

done
