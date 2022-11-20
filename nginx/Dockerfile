FROM nginx:1.23.2

COPY default.conf /etc/nginx/conf.d/
RUN mkdir -p /etc/nginx/ssl

VOLUME /etc/nginx/ssl

EXPOSE 80
EXPOSE 443