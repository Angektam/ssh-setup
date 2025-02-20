#!/bin/bash
configure_ssh() {
    echo "Configurando SSH para permitir autenticación por contraseña..."
    sudo sed -i 's/^#PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
    sudo sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
    sudo systemctl restart ssh
}

configure_ssh
