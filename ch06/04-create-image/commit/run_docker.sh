# 컨테이너, 이미지 정리
docker container stop apa000ex22
docker container rm apa000ex22
docker image rm ex22_original1

# 아파치 컨테이너 준비
docker run --name apa000ex22 -d -p 8092:80 httpd

# 컨테이너를 변환한 새로운 이미지 생성
docker commit apa000ex22 ex22_original1

# 이미지가 생성됐는지 확인
docker image ls | grep ex22_original1