FROM debian
ADD a.list etc/apt/sources.list.d
RUN apt update && apt upgrade && apt install nginx -y
RUN cd /var/www && rm -rf ./* && mkdir -p lapiga.com/img 
RUN chmod -R 754 var/www/lapiga.com
RUN useradd Lisa && groupadd Lapiga && usermod -a -G Lapiga Lisa 
RUN chown -R Lisa:Lapiga var/www/lapiga.com 
RUN sed -i 's#var/www/html#var/www/lapiga.com#g' /etc/nginx/sites-enabled/default
RUN sed -i 's#www-data;#Lisa;#g' /etc/nginx/nginx.conf
ADD index.html /var/www/lapiga.com/
ADD img.jpg /var/www/lapiga.com/img/
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
CMD ["nginx"]
