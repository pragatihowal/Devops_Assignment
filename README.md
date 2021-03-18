# Devops_Assignment
Explanation of Dockerfile instructions :- 
FROM mysql:latest
 ENV MYSQL_ROOT_PASSWORD 123 
ENV MYSQL_DATABASE pucsdStudents 
ENV MYSQL_USER pragati
 ENV MYSQL_PASSWORD 
pucsd ADD test.sql /docker-entrypoint-initdb.d
 EXPOSE 3306 
pull docker using 
docker pull mysql:latest -latest is default version
 docker images:shows information of repository,tag,image id,created,size then we will run docker as, 
docker run --name databasename -d -e MYSQL_ROOT_PASSWORD=123 -p 3306:3306 mysql:latest
 First we will be using mysql image with its latest version. So "FROM mysql:latest" 
command will pull the mysql image latest version. 
create database:we will specify some Environment variables as we have to use them
 while creating mysql database. 
So we will specify environment variables as mysql root password, mysql database name, mysql username, mysql password. Now we can directly connect to Database pucsdStudents . 
So i have created a sql file as test.sql to import data from it. According to MySQL container documentation if we want to execute a file at beginning then we will write command "ADD" following file name which is to be imported, and by 
default this file should be added to specific directory called "docker-entrypointinitdb.d".sql file should be at same directory of Dockerfile. Now we have to add port mapping with instruction “ EXPOSE “ and port no. As 3306.
