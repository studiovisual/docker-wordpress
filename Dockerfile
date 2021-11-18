FROM nginx:1.20-alpine

COPY ./default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

WORKDIR /var/www/html
