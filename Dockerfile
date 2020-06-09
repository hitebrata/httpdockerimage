FROM centos

LABEL project="httpd"
LABEL maintainer "hitebrata@gmail.com"

RUN yum -y install httpd

ADD index.html /var/www/html/index.html
EXPOSE 80


ENTRYPOINT [ "/usr/sbin/httpd" ]
CMD ["-D", "FOREGROUND"]
