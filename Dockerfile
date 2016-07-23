FROM fedora:latest
RUN dnf install -y httpd php php-mysqlnd
RUN echo "ServerName localhost.local" >> /etc/httpd/conf/httpd.conf
RUN apachectl configtest
COPY info.php /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
