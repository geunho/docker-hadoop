FROM geunho/hadoop-base:2.7.2

LABEL maintainer="Geunho Kim <geunho.dev@gmail.com>"

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3  CMD curl -f http://localhost:50075/ || exit 1

RUN mkdir /opt/hadoop/dfs/data
VOLUME /opt/hadoop/dfs/data

ADD hadoop-env.sh /etc/hadoop/

ADD start.sh /start.sh
RUN chmod a+x /start.sh

EXPOSE 50075 50010

CMD ["/start.sh"]