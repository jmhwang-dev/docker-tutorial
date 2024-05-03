# 도커 켜기
open --background -a Docker

# 폴더 하위에 run_docker.sh 찾고 권한 부여
find . -type f -name "*.sh" -exec chmod -x {} \;

# 도커 끄기
# osascript -e 'quit app "Docker"'