function Instalar-OpenSSH {
    Write-Output "Instalando OpenSSH Server..."
    Add-WindowsCapability -Online -Name OpenSSH.Server
}

Instalar-OpenSSH
