FROM geunho/hadoop-base:2.9.2

LABEL maintainer="Geunho Kim <geunho.dev@gmail.com>"

RUN mkdir -p /opt/hadoop/yarn/timeline
VOLUME /opt/hadoop/yarn/timeline

ADD start.sh /start.sh
RUN chmod a+x /start.sh

EXPOSE 8188

CMD ["/start.sh"]