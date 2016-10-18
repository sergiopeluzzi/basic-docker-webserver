FROM ubuntu:16.04

MAINTAINER Sergio Peluzzi <sergiopeluzzi@gmail.com>

RUN apt-get update
RUN apt-get install -y apache2 php libapache2-mod-php
RUN rm /var/www/html/index.html

ADD start.sh /root/start.sh

RUN chmod +x /root/start.sh

EXPOSE 80

CMD ["/root/start.sh"]