all:
	@docker-compose -f ./srcs/docker-compose.yml up --build
clean:
	@docker rm $$(docker ps -a -q) 2>/dev/null || true
	@docker volume rm $$(docker volume ls -q) 2>/dev/null || true
	@docker network rm $$(docker network ls -q) 2>/dev/null || true


fclean: clean
	@docker rmi $$(docker images -q) 2>/dev/null || true

