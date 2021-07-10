FROM centos

RUN yum install net-tools -y
 
RUN yum install ncurses -y

RUN yum install httpd -y

COPY index.html /var/www/html/

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80
