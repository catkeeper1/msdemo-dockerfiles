create database sonarqubedb;

create user sonarqube with encrypted password 'sonarqubepassword';

grant all privileges on DATABASE sonarqubedb to sonarqube;