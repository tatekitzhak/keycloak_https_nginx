FROM nginx:1.23.3-alpine

EXPOSE 80 443

COPY config/localhost.conf /etc/nginx/nginx.conf

COPY certs/* /etc/nginx/ssl/localhost/