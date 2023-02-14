FROM centos:7
RUN yum install httpd -y
COPY ./hello.html /var/www/html/index.html
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]
