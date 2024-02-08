# need to have the login of a person in the group
SUFFIX ?= lgillard

all: build up

build:
	docker build -t router-${SUFFIX} -f router.dockerfile .
	# docker build -t host-${SUFFIX} -f host.dockerfile .

down:
	docker stop router-${SUFFIX}
	# docker stop host-${SUFFIX}

clean:
	docker rm router-${SUFFIX}
	# docker rm host-${SUFFIX}

up: 
	# https://github.com/FRRouting/frr/issues/8681
	docker run --name router-${SUFFIX} -d --rm --privileged router-${SUFFIX}
	# docker run --name host-${SUFFIX} -d --rm host-${SUFFIX}

re: build down clean up
