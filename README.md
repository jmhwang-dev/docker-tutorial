# docker-tutorial

## 도커엔진 시작/종료/자동실행
```
sudo systemctl start docker
sudo systemctl stop docker
sudo systemctl enbale docker
```

## 컨테이너의 기본적인 사용방법
### 기본구조
`docker [상위커맨드] [하위커맨드] (옵션) 대상 (인자)`<br>

### 컨테이너 실행
`docker container run`

### 옵션
`-dit` (`-d` `-i` `-t`를 합친 예)<br>
`-d`<br>
`--all`<br>
`--name penguin`<br>

### 상위 커맨드: `container`
`start`<br>
`stop`<br>
`create`<br>
`run`<br>
`rm`<br>
`exec`<br>
`ls`<br>
`cp`<br>
`commit`<br>

## 컨테이너 실행
`docker container run --name apa000ex1 -d -p 8081:80 httpd:2.2`

### 옵션
`-dit`: 백그라운드에서 표준입력을 열어둔채로 가상 터미널 할당

## 컨테이너 삭제
`docker container stop apa000ex1`<br>
`docker container rm apa000ex1`

## 컨테이너 목록 확인
- `docker ps`: 실행중인 컨테이너 목록
- `docker ps -a`: 실행중 포함한 모든 컨테이너 목록
- `docker container ls`와 같은 의미

## 이미지 관련
- `docker image ls`: 목록확인
- (해당 컨테이너 종료, 삭제 후) `docker image rm nginx`: 이미지 삭제

## 네트워크 생성
- `docker network create [네트워크이름]`

 docker network create wordpress000net1

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

# 6장.
## 6-02. 컨테이너와 호스트 간에 파일 복사하기
`docker cp 원본경로 복사할경로 (docker container cp)`

호스트: 도커엔진을 실행하는 컴퓨터
컨테이너 경로 예시: container_name:container_path

