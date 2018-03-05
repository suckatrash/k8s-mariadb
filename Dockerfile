FROM mariadb
ENV MYSQL_DATABASE=mediawiki
RUN apt-get update && \
apt-get install -y sed
RUN sed -i "s|#bind-address\t= 127.0.0.1|bind-address = 0.0.0.0|g" /etc/mysql/my.cnf
VOLUME  ["/etc/mysql", "/var/lib/mysql"]
EXPOSE 3306
