#/bin/bash

BASE_DIR="$( cd "$(dirname "$0")" ; pwd -P )"
HIVE_VERSION=2.3.5
TEZ_VERSION=0.9.2

echo "Build hive-server2 docker image..."
docker build --no-cache -t geunho/hive-server2:$HIVE_VERSION $BASE_DIR/server2

echo "Build tez docker image..."
docker build --no-cache -t geunho/hive-tez:$TEZ_VERSION $BASE_DIR/tez