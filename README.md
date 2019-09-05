# nginx_images
eg:  
```
docker build -t nginx:1.14
docker run -itd -v nginx.conf:/usr/local/nginx/conf/nginx.conf -v vhost.conf:/usr/local/nginx/conf/conf.d/vhost.conf --name nginx nginx:1.14
```
**注意:dockerfile里需要通外网yum安装一些依赖包,增加代理方法ENV http_proxy="http://xxxx"**
