docker volume create msdemo_postgres_volume

docker run --name msdemo_postgres_server \
       --net=msdemo_network -p "5432:5432" \
       -v msdemo_postgres_volume:/var/lib/postgresql/data \
       -e POSTGRES_PASSWORD=postgrespassword \
       -d postgres:11.5