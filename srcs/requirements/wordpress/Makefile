
all : clean build run 

build:
	docker build -t wordpress .

run:
	# docker run -p 9000:9000 --name wordpress wordpress
	docker run -it -p 9000:9000 --name wordpress --env-file /goinfre/mtigunit/inception_git/srcs/.env wordpress bash
clean:
	docker stop wordpress || true
	docker rm wordpress || true
	docker rmi wordpress || true

