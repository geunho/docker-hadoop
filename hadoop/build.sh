#/bin/bash

BASE_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

docker_build() {
    target=$1

    if [ "$(ls -A $BASE_DIR/$target)" ]; then
        echo "Build $target docker image..."
        cd $BASE_DIR/$target
        docker build -t geunho/hadoop-$target:2.9.2 .
    else
        echo "Target error: $1 does not exiss. (base|namenode|datanode|resourcemanager|nodemanager|proxy)"
    fi
}

docker_build base
docker_build namenode
docker_build datanode
docker_build resourcemanager
docker_build nodemanager