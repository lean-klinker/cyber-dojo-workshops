#!/bin/bash

set -ex

stop() {
    ${CYBER_DOJO_SCRIPT_PATH} down
}

start() {
    ${CYBER_DOJO_SCRIPT_PATH} up --custom=${CYBER_DOJO_CUSTOM_START_POINT_NAME} 
}

main() {
    stop
    start
}

main