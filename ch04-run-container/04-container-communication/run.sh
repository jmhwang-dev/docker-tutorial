docker container stop apa001
docker container rm apa001

docker run --name apa001 -d -p 8080:80 httpd

# docker stop apa001
# docker rm apa001