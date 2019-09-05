FROM centos:7
MAINTAINER wangxin
ADD ./centos_nginstall_lua.tar.gz /usr/local/src/
WORKDIR /usr/local/src
ENV LUAJIT_LIB=/usr/local/luajit/lib
ENV LUAJIT_INC=/usr/local/luajit/include/luajit-2.0
RUN curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
RUN yum -y install gcc gcc-c++ make perl
RUN /usr/local/src/nginx_log.sh 
CMD /usr/local/nginx/sbin/nginx -g 'daemon off;'
