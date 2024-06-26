## 볼륨과 마운트
볼륨: 스토리지의 한 영역을 분할한 것

마운트: 대상을 연결해 운영체제 또는 소프트웨어의 관리하에 두는 일
- 마운트 되는 스토리지는 볼륨 외에도 디렉터리나 파일, 메모리가 될 수도 있다.
- 스토리지 마운트라고 하면 모호하기 때문에, 통상 '볼륨 마운트' 라는 용어를 사용한다.

마운트된 볼륨은
 - 컨테이너를 종료해도 바로 삭제되지는 않는다. 그러나 언젠가는 삭제된다.
 - 데이터가 컨테이너 속에 있다면, 컨테이너와 함께 데이터도 소멸된다.

데이터 퍼시스턴시(Data persistency): 컨테이너 외부에 데이터를 옮겨 저장하는 것.

## 스토리지 마운트의 종류
### 볼륨 마운트
- `도커 엔진이 관리하는 영역 내에 만들어진 볼륨`을 컨테이너에 디스크 형태로 마운트한 것
- `직접 조작하기 어려움`. 그래서 임시목적의 사용 또는 자주 쓰지는 않지만 지우면 안되는 파일을 두는 목적으로 사용
- 백업 절차가 복잡함
### 바인드 마운트
- `도커 엔진에서 관리하지 않는 영역`의 기존 디렉터리를 컨테이너 마운트 하는 방식
    - 도커가 설치된 컴퓨터의 문서 폴더 또는 바탕화면 폴더 등
    - 폴더 속에 파일을 직접 두거나 열어볼 수 있기 때문에 `자주 사용하는 파일을 두는데 사용`
### 그 외 - 임시 메모리(tmpfs) 마운트
- 디스크가 아닌 주 메모리 영역을 마운트
- 도커 엔지니 정지되거나 호스트가 재부팅하면 소멸
### 차이점
|항목|볼륨 마운트|바인드 마운트|
|-----------|-----------|-----------|
|스토리지 영역|볼륨|디렉터리 또는 파일|
|물리적 위치|도커 엔진의 관리 영역|어디든지 가능|
|마운트 절차|볼류믕ㄹ 생성한 후 마운트|기존 파일 또는 폴더를 마운트|
|내용 편집|도커 컨테이너를 통해서|일반적인 파일과 동일|
|백업|절차가 복잡|일반적인 파일과 동일|
- 사용 기준
    - 간단한지 복잡한지
    - 호스트 컴퓨터에서 파일을 다룰 필요가 있는지. (호스트: 도커엔진이 실행되는 컴퓨터)
    - 환경의 의존성을 배제해야 하는지
- `도커 제작사는 볼륨 마운트 사용을 권장한다. 그러나 백업이 복잡하다.`
- 파일을 직접 편집해야하는 일이 많다면 `바인드 마운트`, 그렇지 않다면 `볼륨 마운트`

### 스토리지 영역 생성에 대한 명령어
```docker
docker volume create 
docker volume rm
docker volume ls
docker volume prune # 현재 마운트 되지않은 볼륨을 모두 삭제
```

### 바인드 마운트
```docker
dokcer run -v 스토리지_실제_경로:컨테이너_마운트_경로
```

### 볼륨 마운트
```docker
docker run -v 볼륨_이름:컨테이너_마운트_경로
```