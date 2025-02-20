#!/bin/bash
install_ssh() {
    echo "Instalando OpenSSH Server en Ubuntu..."
    sudo apt update && sudo apt install -y openssh-server
}

install_ssh
