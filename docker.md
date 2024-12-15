

```
docker run -d --restart=unless-stopped --name=blog --net=host  -v /home/app/blog/docs:/usr/share/nginx/html registry.cn-hangzhou.aliyuncs.com/nine/blog:v2024121406

```