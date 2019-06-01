FROM debian
ADD a.list etc/apt/sources.list.d
RUN apt update && apt-get update && apt-get install nginx && apt-get clean && \
    cd/var/www && rm -rf ./* && mkdir -p lapiga.com/img && \
    chmod -R 754 var/www/lapiga.com/ && \
    useradd Lisa && groupadd Lapiga && usermod -a -G Lapiga Lisa && \
    chown -R Lisa:Lapiga var/www/lapiga.com && \
    sed -i 's/\/var\/www/\/html/\var\/www\/lapiga.com/g' /etc/nginx/sites-enabled/default && \
    sed -i 's/user nginx/user Lisa/g' /etc/nginx/nginx.conf
ADD index.html /var/www/lapiga.com/
ADD img.jpg /var/www/lapiga.com/img/
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
CMD ["nginx"]
