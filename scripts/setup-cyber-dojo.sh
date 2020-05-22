#!/bin/bash

set -ex

source ~/.bashrc

build_custom_docker_images() {
    /bin/bash "./scripts/build-docker-images.sh"
}

create_cyber_dojo_directory() {
    sudo mkdir -p /cyber-dojo
}

modify_cyber_dojo_owner() {
    sudo chown ${CYBER_DOJO_SAVER_SERVICE_USER_ID}:${CYBER_DOJO_SAVER_SERVICE_GROUP_ID} ${CYBER_DOJO_ROOT_PATH}
}

install_cyber_dojo_script() {
    curl -O ${CYBER_DOJO_DOWNLOAD_URL}
    mv cyber-dojo ~/
    chmod 700 ${CYBER_DOJO_SCRIPT_PATH}
}

add_start_points() {
    ${CYBER_DOJO_SCRIPT_PATH} start-point create ${CYBER_DOJO_CUSTOM_START_POINT_NAME} --custom ${CYBER_DOJO_CUSTOM_START_POINT_URL}
}

main() {
    build_custom_docker_images
    create_cyber_dojo_directory
    modify_cyber_dojo_owner
    install_cyber_dojo_script
    add_start_points
}

main