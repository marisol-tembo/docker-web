FROM redhat/ubi8
RUN yum update -y
RUN yum install httpd -y
COPY ./index.html /var/www/html/
COPY ./IMG_8254.JPG /var/www/html/  # Add this line
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
