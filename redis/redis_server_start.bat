docker run -v /docker_data/redis/redis.conf:/usr/local/etc/redis/redis.conf \
           --net=msdemo_network -p "6379:6379" -d \
           --name msdemo_redis_server redis:5.0.6 \
           redis-server /usr/local/etc/redis/redis.conf