FROM registry.cn-hangzhou.aliyuncs.com/nine/blog:v2024080601

RUN echo "Asia/shanghai" > /etc/timezone;
# ADD  docs /usr/share/nginx/html

COPY ./config/nginx.conf /etc/nginx/nginx.conf
COPY config/init.sh /home
RUN chmod 777 /home/init.sh
VOLUME /usr/share/nginx/html
#ENTRYPOINT ["/home/init.sh"]
CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80

