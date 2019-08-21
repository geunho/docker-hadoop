#!/bin/sh

NAME_DIR=$1

if [ "`ls -A $NAME_DIR`" == "" ]; then
  $HADOOP_PREFIX/bin/hdfs --config $HADOOP_CONF_DIR namenode -format
fi

$HADOOP_PREFIX/bin/hdfs --config $HADOOP_CONF_DIR namenode