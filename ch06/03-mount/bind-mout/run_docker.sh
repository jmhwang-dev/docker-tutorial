docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

tmp_path=~/Documents/github/docker-tutorial/ch06/03-volume-mount/apa_folder
mkdir $tmp_path
docker run --name apa000ex20 -d -p 8090:80 -v $tmp_path:/usr/local/apache2/htdocs httpd

# TODO
# localhost:8090에 접속 결과와 tmp_path에 index.html을 넣고 나서 결과 비교