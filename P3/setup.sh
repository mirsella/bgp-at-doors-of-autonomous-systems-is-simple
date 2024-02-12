#!/bin/bash

for id in $(docker ps -q); do
	hostname=$(docker inspect -f '{{.Config.Hostname}}' $id)
	script=scripts/$(echo $hostname).sh
	echo "applying $script config to $hostname ($id)"
	cat $script | docker exec -i $id sh
done
