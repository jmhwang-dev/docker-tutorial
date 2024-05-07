tmp_path=~/Documents/github/docker-tutorial/ch06/03-mount/advanced

docker run --rm \
-v apa000vol1:/source \
-v $tmp_path:/target \
busybox \
tar cvzf /target/backup_apa.tar.gz -C /source .

tar xvzf $tmp_path/backup_apa.tar.gz