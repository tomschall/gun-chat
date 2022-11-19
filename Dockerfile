FROM nginx
COPY ./public /usr/share/nginx/html
COPY ./nginx /nginx
EXPOSE 80
CMD /bin/sh -c "envsubst '\$PORT' < /nginx/nginx.conf.template > /etc/nginx/conf.d/nginx.conf" && nginx -g 'daemon off;'