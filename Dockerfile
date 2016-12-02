
FROM ubuntu

FROM ubuntu

RUN apt-get update && apt-get -y install nginx

RUN echo "daemon,off;" >> /etc/nginx/nginx.conf

ADD index.html /Users/usersio/docker-centrale/index.html

VOLUME /var/www/html

EXPOSE 80
