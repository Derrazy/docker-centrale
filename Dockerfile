
FROM ubuntu


RUN apt-get update && apt-get -y install nginx

CMD ["nginx", "-g", "daemon off;"]

RUN echo "daemon,off;" >> /etc/nginx/nginx.conf


ADD index.html /var/www/html/index.html

VOLUME /var/www/html

EXPOSE 80
