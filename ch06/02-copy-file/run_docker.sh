# httpd 컨테이너 실행
docker run --name apa000ex19 -d -p 8089:80 httpd

# 파일 복사: 호스트 -> 컨테이너
docker cp ./index.html apa000ex19:/usr/local/apache2/htdocs/

# localhost:8089에 접근하여 내용 확인