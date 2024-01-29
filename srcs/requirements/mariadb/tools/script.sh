# !/bin/bash


# echo "bind-address = mariadb" >> /etc/mysql/mariadb.conf.d/50-server.cnf

# mysqld_safe &

# sleep 10

# mariadb -u root -p"$ROOT_PASSWORD_DB" <<SQL
# CREATE DATABASE IF NOT EXISTS \`$DATABASE_NAME_DB\`;
# CREATE USER 'root'@'%' IDENTIFIED BY '$ROOT_PASSWORD_DB';
# CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
# GRANT ALL PRIVILEGES ON $SQL_DATABASE.* TO '$MYSQL_USER'@'%';
# GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
# FLUSH PRIVILEGES;
# SQL

# mariadb-admin -u root -p"$ROOT_PASSWORD_DB" shutdown

# mysqld_safe


echo "bind-address = mariadb" >> /etc/mysql/mariadb.conf.d/50-server.cnf

mysqld_safe &

sleep 10

mariadb -u root -p"$ROOT_PASSWORD_DB" <<SQL
CREATE DATABASE IF NOT EXISTS \`$DATABASE_NAME_DB\`;
CREATE USER 'root'@'%' IDENTIFIED BY '$ROOT_PASSWORD_DB';
CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT ALL PRIVILEGES ON \`$DATABASE_NAME_DB\`.* TO '$MYSQL_USER'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
SQL

mariadb-admin -u root -p"$ROOT_PASSWORD_DB" shutdown
mysqld_safe
