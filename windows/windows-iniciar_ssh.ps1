function Iniciar-SSH {
    Write-Output "Iniciando servicio SSH..."
    Start-Service sshd
    Set-Service -Name sshd -StartupType 'Automatic'
    Restart-Service sshd
}

Iniciar-SSH
