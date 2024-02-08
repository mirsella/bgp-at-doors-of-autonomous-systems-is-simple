# need to have the login of a person in the group
SUFFIX ?= lgillard

build:
	docker build -t router-${SUFFIX} -f router.dockerfile .
	docker build -t host-${SUFFIX} -f host.dockerfile .
