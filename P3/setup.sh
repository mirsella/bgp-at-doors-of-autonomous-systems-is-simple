#!/bin/bash

if [ $(docker ps -q | wc -l) -gt 4 ]
then
	echo 'More than 4 docker container running, Aborting'
	exit 1
fi

for id in $(docker ps -q); do
	hostname=$(docker inspect -f '{{.Config.Hostname}}' $id)
	script=scripts/$(echo $hostname).sh
	echo "applying $script config to $hostname ($id)"
	cat $script | docker exec -i $id sh
done
