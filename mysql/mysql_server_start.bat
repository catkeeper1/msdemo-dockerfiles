#need to create /data/mysql folder in the host machine.
docker run --name msdemo_mysql_server --net=msdemo_network -e MYSQL_ROOT_PASSWORD=rootpassword -v "/docker_data/mysql:/var/lib/mysql" -d -p "3306:3306" -p "33060:33060" mysql:8.0.17
