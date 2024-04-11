# docker-tutorial

## 도커엔진 시작/종료/자동실행
```
sudo systemctl start docker
sudo systemctl stop docker
sudo systemctl enbale docke
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