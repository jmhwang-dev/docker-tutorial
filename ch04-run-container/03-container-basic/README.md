# 컨테이너 생성, 삭제, 실행, 정지
## 컨테이너 생성 + 실행
```docker
# 표준
docker container run (옵션) 이미지 (인자)
```

```docker
# 생략형
docker run (옵션) 이미지 (인자)
```

사실 `docker run`은아래 조합과 같다.

```docker
# 표준
docker image pull + docker container create + docker container start
```

```docker
# 생략형
docker pull + docker create + docker start
```

|옵션 형식|생략형|내용|
|---|---|---|
|--name `컨테이너_이름`||컨테이너 이름 지정|
|--publish `호스트_포트번호:컨테이너_포트번호`|-p|포트 번호 지정|
|--volume `호스트_디스크:컨테이너_디렉터리`|-v|볼륨 마운트|
|--network `네트워크_이름`||컨테이너를 네트워크에 연결함|
|--env `환경변수_이름=값`|-e|환경변수 설정|
|--detach|-d|백그라운드로 실행|
|--interactive|-i|컨테이너에 터미널(키보드)를 연결|
|--tty|-t|특수 키를 사용 가능하도록 함|
|--help||사용 방법 안내 메시지 출력|

## 컨테이너 정지
```docker
# 표준
docker container stop 컨테이너_이름
```

```docker
# 생략형
docker stop 컨테이너_이름
```

## 컨테이너 삭제
```docker
# 표준
docker container rm 컨테이너_이름
```

```docker
# 생략형
docker rm 컨테이너_이름
```

## 컨테이너 목록 출력
```docker
docker ps (옵션)
```
> `ps`는 process staus의 약자이다.

사실 `docker ps`는 아래와 같다.
```docker
# 표준
docker container ls
```
|옵션|내용|
|---|---|
|-a|모든 컨테이너 목록(실행중 포함)|