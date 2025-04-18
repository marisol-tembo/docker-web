FROM redhat/ubi8
RUN yum update -y && \
    yum install httpd -y && \
    mkdir -p /var/www/html
COPY ./var/www/html/
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
