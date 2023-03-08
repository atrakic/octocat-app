#FROM nginx
FROM nginxinc/nginx-unprivileged:stable-alpine AS final
WORKDIR /usr/share/nginx/html
COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY site .
EXPOSE 8080
#CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
