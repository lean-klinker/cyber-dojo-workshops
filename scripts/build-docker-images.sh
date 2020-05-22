#!/bin/bash

set -ex

build_image() {
    image_name=${1}
    docker_file_path=${2}
    
    if [[ ! -z "$(docker images -q ${image_name}:latest)" ]]; then 
        docker rmi "${image_name}:latest"
    fi
    docker build -t "${image_name}:latest" ${docker_file_path}
}

main() {
    build_image "leanklinker/cyber-dojo-javascript-jest" "./languages/javascript/jest"
}

main