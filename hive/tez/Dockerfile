FROM tomcat:9-jdk8

LABEL maintainer="Geunho Kim <geunho.dev@gmail.com>"

ENV TEZ_VERSION=0.9.2
ENV TEZ_URL=http://mirror.navercorp.com/apache/tez/$TEZ_VERSION/apache-tez-$TEZ_VERSION-bin.tar.gz

COPY ./config /tmp/config/

RUN  apt-get update -y && \
     apt-get upgrade -y && \
     apt-get dist-upgrade -y && \
     apt-get -y autoremove && \
     apt-get clean

RUN apt-get install -y zip \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fSL "$TEZ_URL" -o /tmp/tez.tar.gz \
    && tar -xvf /tmp/tez.tar.gz -C /tmp/ \
    && cp -r /tmp/apache-tez-$TEZ_VERSION-bin /opt/tez \
    && cp /opt/tez/tez-ui-$TEZ_VERSION.war /tmp/tez-ui.war \
    && cd /tmp \ 
    && zip -u tez-ui.war config/configs.env \
    && cp tez-ui.war /usr/local/tomcat/webapps/ \
    && rm /tmp/tez.tar.gz \
    && rm -rf /tmp/apache-tez-$TEZ_VERSION-bin

ADD tez-site.xml /opt/tez/conf/