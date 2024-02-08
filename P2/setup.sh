!#/bin/bash

// take hostname to find
function find_container_id() {
	for container_id in $(docker ps -q); do
		if [ "$(docker inspect -f '{{.Config.Hostname}}' $container_id)" == $1 ]; then
			echo $container_id
			return
		fi
	done
}
