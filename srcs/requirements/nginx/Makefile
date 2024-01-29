
all : clean build run 

build:
	docker build -t nginx .

run:
	# docker run -it -p 443:443 --name nginx nginx bash 
	docker run -p 443:443 --name nginx nginx

clean:
	docker stop nginx || true
	docker rm nginx || true
	docker rmi nginx || true