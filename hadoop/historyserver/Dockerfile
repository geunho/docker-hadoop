FROM geunho/hadoop-base:2.7.2

LABEL maintainer="Geunho Kim <geunho.dev@gmail.com>"

ADD yarn-site.xml /etc/hadoop/

ADD start.sh /start.sh
RUN chmod a+x /start.sh

EXPOSE 8188

CMD ["/start.sh"]