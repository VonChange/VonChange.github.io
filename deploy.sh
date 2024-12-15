# !/usr/bin/env bash
tar -czvf dist.tar.gz docs
docker build -t registry.cn-hangzhou.aliyuncs.com/nine/blog:v$1 .
docker push registry.cn-hangzhou.aliyuncs.com/nine/blog:v$1
#scp dist.tar.gz root@$1:/home/app/blog/
#scp blog.sh root@$1:/home/app/blog/
#ssh root@$1 bash /home/app/blog/blog.sh
