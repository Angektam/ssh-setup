#!/bin/bash

# Configuración
IP_SERVIDOR="192.168.1.100"  # Reemplaza con la IP del servidor Windows
USUARIO="administrator"  # Reemplaza con tu usuario de Windows

connect_to_windows() {
    echo "Conectando a $USUARIO@$IP_SERVIDOR..."
    ssh -o PubkeyAuthentication=no "$USUARIO@$IP_SERVIDOR"
}

connect_to_windows
