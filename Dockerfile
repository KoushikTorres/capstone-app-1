FROM ubuntu:latest
LABEL "author"="koushik"
LABEL "project"="apache2"
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /var/www/html
VOLUME /var/log/apache2
RUN apt update && apt upgrade -y
RUN apt install apache2 -y
EXPOSE 80
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
ADD capstone-app-1/  /var/www/html
