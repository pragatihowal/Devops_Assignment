from mysql:latest
ENV MYSQL_ROOT_PASSWORD 123
ENV MYSQL_DATABASSE pucsdSudents
ENV MYSQL_USER pragati
ENV MYSQL_PASSWORD 1234
ADD db.sql/docker-entrypoint-initdb.d
EXPOSE 3306
