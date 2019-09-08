# nginx_images
eg:  
```
docker build -f ./nginx_1.14/dockerfile -t nginx:1.14 ./nginx_1.14/
simple example:
docker run -itd  nginx:1.14
complete example:
docker run -itd -v logs:/usr/local/nginx/logs -v nginx.conf:/usr/local/nginx/conf/nginx.conf -v vhost.conf:/usr/local/nginx/conf/conf.d/vhost.conf --name nginx nginx:1.14
```
**注意:dockerfile里需要通外网yum安装一些依赖包,增加代理方法ENV http_proxy="http://xxxx"**
