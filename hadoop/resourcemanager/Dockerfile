FROM geunho/hadoop-base:2.7.2

LABEL maintainer="Geunho Kim <geunho.dev@gmail.com>"

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3  CMD curl -f http://$(hostname):8088/ || exit 1

ADD yarn-site.xml /etc/hadoop/
ADD yarn.include /etc/hadoop/

ADD start.sh /start.sh
RUN chmod a+x /start.sh

EXPOSE 8088 8025 8030 8141 8050

CMD ["/start.sh"]