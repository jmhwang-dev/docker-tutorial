## 네트워크 생성
```
docker network create [네트워크이름]
```

```docker
docker network create wordpress000net1
```

```docker
docker container run \
--name mysql000ex11 \
-dit \
--net wordpress000net1 \
-e MYSQL_ROOT_PASSWORD=wordpress \
-e MYSQL_DATABASE=wordpress000db \
-e MYSQL_USER=wordpress000kun \
-e MYSQL_PASSWORD=wordprass \
mysql \
--character-set-server=utf8mb4 \
--collation-server=utf8mb4_unicode_ci \
--default-authentication-plugin=mysql_native_password
```

```docker
docker container run \
--name wordpress000ex12 \
-dit \
--net wordpress000net1 \
-p 8085:80 \
-e WORDPRESS_DB_HOST=mysql000ex11 \
-e WORDPRESS_DB_NAME=wordpress000db \
-e WORDPRESS_DB_USER=wordpress000kun \
-e WORDPRESS_DB_PASSWORD=wordprass \
wordpress
```