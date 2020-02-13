FROM fedora
MAINTAINER phani "phaniraj"
RUN yum install httpd -y
# this is apache httpd web server
WORKDIR /var/www/html
ADD . .
EXPOSE 80
ENTRYPOINT httpd -DFOREGROUND 
# systemctl start httpd
