#/bin/bash

BASE_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

docker_build() {
    target=$1
    build_options=$2

    if [ "$(ls -A $BASE_DIR/$target)" ]; then
        echo "Build $target docker image..."
        cd $BASE_DIR/$target
        docker build $build_options -t geunho/hadoop-$target:2.9.2 .
    else
        echo "Target error: $1 does not exiss. (base|namenode|datanode|resourcemanager|nodemanager|proxy)"
    fi
}

docker_build base
docker_build namenode --no-cache
docker_build datanode --no-cache
docker_build resourcemanager --no-cache
docker_build nodemanager --no-cache
docker_build historyserver --no-cache