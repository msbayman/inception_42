all : clean build run

build:
	docker build -t mariadb .

run:
	docker run -it  --name mariadb --env-file /goinfre/mtigunit/inception_git/srcs/.env mariadb bash 

clean:
	docker stop mariadb  || true
	docker rm mariadb  || true
	docker rmi mariadb  || true