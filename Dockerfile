FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN  apt-get update \
    && apt-get install -y apache2
ADD . /var/www/html
#ADD images /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]
