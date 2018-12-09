#!/bin/sh

containers=`docker container ls -a |awk '{print $1}' |grep '[a-z]' `

for container in ${containers} 
do
    echo "rm ${container}"
    docker container rm ${container}
done
