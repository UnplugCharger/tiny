list:
	docker ps -aq
stop:
	docker stop $(shell docker ps -aq)
remove_containners:
	docker rm $(shell docker ps -aq)
remove_images:
	docker rmi $(shell docker images -q)


all : list stop remove_containners remove_images