function Configurar-SSH {
    $sshdConfigPath = "C:\ProgramData\ssh\sshd_config"

    if (Test-Path $sshdConfigPath) {
        (Get-Content $sshdConfigPath) -replace "^#?PasswordAuthentication no", "PasswordAuthentication yes" | Set-Content $sshdConfigPath
        (Get-Content $sshdConfigPath) -replace "^#?PubkeyAuthentication yes", "PubkeyAuthentication no" | Set-Content $sshdConfigPath
        Write-Output "Configuración de SSH actualizada."
    } else {
        Write-Output "No se encontró el archivo sshd_config."
    }
}

Configurar-SSH
