# 도커 이미지 버전과 이미지 이름
## 버전을 지정하는 포맷
> 이미지_이름:버전_넘버
```docker
# 버전 명시 예시
docker run --name apa000ex2 -d -p 8080:80 httpd:2.2
```

```docker
# 삭제 예시
docker image rm httpd:2.2
```