#!/bin/bash

install_dependencies() {
    sudo apt update
    sudo apt upgrade
    sudo apt install apt-transport-https ca-certificates curl software-properties-common
}

add_docker_repository()  {
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
}

install_docker() {
    sudo apt update
    sudo apt install docker-ce
}

enable_current_user_to_run_docker_without_sudo() {
    sudo usermod -aG docker ${USER}

    echo "You must now logout to continue setup..."
}

main() {
    install_dependencies
    add_docker_repository
    install_docker
    enable_current_user_to_run_docker_without_sudo
}

main