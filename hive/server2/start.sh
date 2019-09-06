#!/bin/bash

META_DIR=$1
echo $META_DIR

#TEZ_VERSION=0.9.2
#if [ "$($HADOOP_PREFIX/bin/hadoop fs -ls -R /apps/tez-$TEZ_VERSION)"]

if [ "$(ls -A $META_DIR)" ]; then
  echo "Metastore is already initialized."
else
  echo "Initialize Metastore."
  $HIVE_HOME/bin/schematool -dbType derby -initSchema --verbose
fi

$HIVE_HOME/bin/hiveserver2