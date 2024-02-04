all:
	@mkdir -p /home/amsaoub/data/wp /home/amsaoub/data/db
	@docker-compose -f ./srcs/docker-compose.yml up --build
clean:
	@docker	stop $$(docker ps -q) || true
	@docker rm $$(docker ps -a -q) 2>/dev/null || true
	@docker volume rm $$(docker volume ls -q) 2>/dev/null || true
	@docker network rm $$(docker network ls -q) 2>/dev/null || true
	@docker rmi $$(docker images -q) 2>/dev/null || true
	@rm -rf /home/amsaoub/data/wp /home/amsaoub/data/db

