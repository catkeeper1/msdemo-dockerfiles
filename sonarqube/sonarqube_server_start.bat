#need to increase the VM memory to 6G,
#run command 'sysctl -w vm.max_map_count=262144' in VM as root. When the docker tool box VM restarted, this need to be
# run again.
# need to install SonarJavaLanguages plugin.

docker run -d --name msdemo_sonarqube_server \
    --stop-timeout 3600 \
    --net=msdemo_network \
    -p 9000:9000 \
    -e sonar.jdbc.username=sonarqube \
    -e sonar.jdbc.password=sonarqubepassword \
    -e sonar.jdbc.url=jdbc:postgresql://msdemo_postgres_server/sonarqubedb \
    -v /docker_data/sonarqube/conf:/opt/sonarqube/conf \
    -v /docker_data/sonarqube/data:/opt/sonarqube/data \
    -v /docker_data/sonarqube/logs:/opt/sonarqube/logs \
    -v /docker_data/sonarqube/extensions:/opt/sonarqube/extensions \
    sonarqube:7.9.1-community