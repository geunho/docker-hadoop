FROM nginx

LABEL maintainer="Geunho Kim <geunho.dev@gmail.com>"

RUN rm /etc/nginx/conf.d/default.conf
COPY *.conf /etc/nginx/conf.d/
COPY nginx.conf /etc/nginx/

CMD ["nginx" "-g" "'daemon off;'"]