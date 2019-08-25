FROM azul/zulu-openjdk:8

LABEL maintainer="Geunho Kim <geunho.dev@gmail.com>"

RUN apt-get update && apt-get install -y bash curl 

ENV HADOOP_VERSION=2.9.2
ENV HADOOP_URL=http://mirror.apache-kr.org/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz
# change endpoint to mirror if its slow... (origin https://www.apache.org/dist/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz)

RUN curl -fSL "$HADOOP_URL" -o /tmp/hadoop.tar.gz \
    && tar -xvf /tmp/hadoop.tar.gz -C /opt/ \
    && rm /tmp/hadoop.tar.gz

RUN ln -s /opt/hadoop-$HADOOP_VERSION /opt/hadoop \
    && mkdir /opt/hadoop/dfs \
    && ln -s /opt/hadoop-$HADOOP_VERSION/etc/hadoop /etc/hadoop \
    && rm -rf /opt/hadoop/share/doc

ADD core-site.xml /etc/hadoop/

ENV HADOOP_PREFIX=/opt/hadoop
ENV HADOOP_CONF_DIR=/etc/hadoop
ENV PATH $HADOOP_PREFIX/bin/:$PATH
ENV JAVA_HOME /usr/lib/jvm/zulu-8-amd64

