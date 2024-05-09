1. 파일 복사와 마운트를 이용한 방법 (6-2절, 6-3절)
2. 컨테이너에 리눅스 명령어를 실행하는 방법
    ```docker
    docker exec (옵션) 컨테이너_이름 /bin/bash

    # 예시
    docker exec -it apa000ex23 /bin/bash
    ```
    - 실행 중인 컨테이너에 새로운 프로세스를 실행하기 위해 사용
    - 이미 실행 중인 컨테이너의 셸에 새로운 셸 세션을 열어줌
    ---
    ```docker
    docker run (옵션) 이미지_이름 /bin/bash

    # 예시
    docker run --name apa000ex23 -it -p 8089:80 httpd /bin/bash
    ```
    - bash가 실행되면 셸에 입력된 명령어는 해당 컨테이너로 전달된다.
    - 컨테이너의 셸에 연결됨