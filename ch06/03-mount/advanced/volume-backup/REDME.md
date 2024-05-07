## 운영 환경에서 확인하는 방법 (p.194)
- 볼륨 자체를 복사할 수 없으므로, 별도의 리눅스 컨테이너(`busybox`)를 연결해 볼륨의 내용을 압축해 저장한다.
- 다만, 주의할 점은 컨테이너 생성과 함께 `tar` 명령어로 백업을 수행한단다는 점이다.
- 이후 압축한 파일을 컨테이너 밖에 저장해야한다.

```docker
docker run --rm \
-v 볼륨명:/source \
-v 백업_저장_폴더명:/target \
busybox \
tar cvzf /target/백업파일이름.targ.gz -C /source .
```

## 위 명령어에서 tar 옵션 설명
- c: 새로운 아카이브를 생성
- v: 실행 중인 작업의 상세한 정보를 출력
- z: gzip 압축을 사용하여 아카이브를 생성
- f: 아카이브 파일의 이름을 지정
- -C: 지정된 디렉토리로 이동하여 아카이브를 생성. 이 경우 /source 디렉토리로 이동한 후에 아카이브를 생성합니다.

## tar 압축 해제 시 옵션
- x: 아카이브를 해제합니다.
- v: 실행 중인 작업의 상세한 정보를 출력합니다.
- z: gzip으로 압축된 파일임을 나타냅니다.
- f: 아카이브 파일의 이름을 지정합니다.

## 백업의 복원 예제
```
docker run --rm \
-v apa000vol2:/source \
-v $tmp_path:/target \
busybox \
tar xvzf /target/backup_apa.tar.gz -C /source
```