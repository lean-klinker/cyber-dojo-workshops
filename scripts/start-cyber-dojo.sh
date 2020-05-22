#!/bin/bash

set -ex

setup_environment_variables() {
    if [ -z "${CYBER_DOJO_SCRIPT_PATH}" ]; then 
        /bin/bash ./scripts/setup-bash-profile.sh
        source ~/.bashrc
    fi
}

stop() {
    if [ hash ${CYBER_DOJO_SCRIPT_PATH} ]; then
        ${CYBER_DOJO_SCRIPT_PATH} down
    fi
}

setup_cyber_dojo() {
    /bin/bash ./scripts/setup-cyber-dojo.sh
}

start() {
    ${CYBER_DOJO_SCRIPT_PATH} up --custom=${CYBER_DOJO_CUSTOM_START_POINT_NAME} 
}

main() {
    setup_environment_variables
    stop
    setup_cyber_dojo
    start
}

main