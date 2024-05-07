# 예제 컨테이너 이름과 동일한 것이 있으면 정리
docker container stop apa000ex21
docker container rm apa000ex21

# 예제 볼륨 이름과 동일한 것이 있으면 정리
docker volume rm apa000vol1

# 마운트할 볼륨 생성
docker volume create apa000vol1

# 아파치 컨테이너 실행하고 볼륨 마운트
# -v: 생성한 볼륨과 컨테이너속 마운트 위치 지정
docker run --name apa000ex21 -d -p 8091:80 -v apa000vol1:/usr/local/apache2/htdocs httpd

# 생성한 볼륨 상세 정보 확인
docker volume inspect apa000vol1

# 볼륨이 컨테이너에 마운트 됐는지 확인
docker container inspect apa000ex21

## 아래 내용이 확인되면 성공
# "Mounts": [
#     {
#         "Type": "volume",
#         "Name": "apa000vol1",
#         "Source": "/var/lib/docker/volumes/apa000vol1/_data",
#         "Destination": "/usr/local/apache2/htdocs",
#         "Driver": "local",
#         "Mode": "z",
#         "RW": true,
#         "Propagation": ""
#     }
# ],