FROM ubuntu:18.04
MAINTAINER Steven Yoo <ysh1096@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
RUN apt-get install -y php5.6


RUN apt-get install -y php5.6-mysql

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
