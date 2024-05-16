# 예제 실행 전 컨테이너 초기화
echo -e "예제 컨테이너 삭제"
docker container stop apa000ex1
docker container rm apa000ex1

# 컨테이너를 생성하고 실행 (docker run)
docker container run --name apa000ex1 -d -p 8081:80 httpd:2.2

# -e: enable interpretation of backslash escapes의 약자
echo -e "\n컨테이너 생성확인"
# -f: --filter의 약자
docker ps -f name=apa000ex1

docker container stop apa000ex1
echo -e "\n컨테이너 종료 확인"
docker ps -f name=apa000ex1

docker container rm apa000ex1
echo -e "\n컨테이너 삭제 확인"
docker ps -f name=apa000ex1
