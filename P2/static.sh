#!/bin/bash

for id in $(docker ps -q); do
	hostname=$(docker inspect -f '{{.Config.Hostname}}' $id)
	# script=static/$(echo $hostname | sed -r 's/(host|router)-\w+-(1|2)/\1-\2/').sh
	script=static/$(echo $hostname | cut -d'-' -f1,3).sh
	echo "applying $script config to $hostname ($id)"
	cat $script | docker exec -i $id sh
done
