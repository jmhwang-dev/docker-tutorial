docker stop mysql000ex11
docker rm mysql000ex11
docker container run \
--name mysql000ex11 \
-dit \
-e MYSQL_ROOT_PASSWORD=wordpress \
-e MYSQL_DATABASE=wordpress000db \
-e MYSQL_USER=wordpress000kun \
-e MYSQL_PASSWORD=wordprass \
mysql \

docker ps -a