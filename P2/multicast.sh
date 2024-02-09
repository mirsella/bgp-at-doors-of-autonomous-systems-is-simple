#!/bin/bash

for id in $(docker ps -q); do
	hostname=$(docker inspect -f '{{.Config.Hostname}}' $id)
	script=multicast/$(echo $hostname | cut -d'-' -f1,3).sh
	echo "applying $script config to $hostname ($id)"
	cat $script | docker exec -i $id sh
done
