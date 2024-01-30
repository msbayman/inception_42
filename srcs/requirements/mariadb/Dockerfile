FROM debian:bullseye


RUN apt update -y
RUN apt upgrade -y 
RUN apt install -y mariadb-server

COPY ./tools/script.sh /script.sh

CMD [ "bash", "script.sh" ]


