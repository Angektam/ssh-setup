function Configurar-Firewall {
    Write-Output "Agregando regla de firewall para SSH..."
    New-NetFirewallRule -Name sshd -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22
}

Configurar-Firewall
