FROM geunho/hadoop-base:2.9.2

LABEL maintainer="Geunho Kim <geunho.dev@gmail.com>"

RUN apt-get update && apt-get install -y bash curl 

ENV HIVE_VERSION=2.3.6
ENV HIVE_URL=https://www-us.apache.org/dist/hive/hive-$HIVE_VERSION/apache-hive-$HIVE_VERSION-bin.tar.gz
# http://mirror.apache-kr.org/hive/ kr mirror가 있긴한데.. 동기화가 조금 늦는듯 함

RUN curl -fSL "$HIVE_URL" -o /tmp/hive.tar.gz \
    && tar -xvf /tmp/hive.tar.gz -C /opt/ \
    && rm /tmp/hive.tar.gz

RUN ln -s /opt/apache-hive-$HIVE_VERSION-bin /opt/hive \
    && mkdir /opt/hive/data

ENV HIVE_HOME /opt/hive
ENV HIVE_CONF_DIR $HIVE_HOME/conf
ENV PATH $HIVE_HOME/bin:$PATH
ENV JAVA_HOME /usr/lib/jvm/zulu-8-amd64

ADD hive-site.xml $HIVE_CONF_DIR/
ADD yarn-site.xml $HADOOP_CONF_DIR/

ADD start.sh /start.sh
RUN chmod a+x /start.sh

EXPOSE 10000

CMD ["/start.sh", "/opt/hive/data/metastore_db"]