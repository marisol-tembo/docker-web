FROM redhat/ubi8
RUN yum update -y
RUN yum install httpd -y
COPY ./index.html /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]