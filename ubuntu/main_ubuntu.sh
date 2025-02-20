#!/bin/bash
echo "Ejecutando instalación y configuración de SSH en Ubuntu..."
source ./ubuntu/instalar_ssh.sh
source ./ubuntu/configurar_ssh.sh

echo "Ubuntu listo. Puedes conectar con:"
echo "./ubuntu/conectar_ssh.sh"
