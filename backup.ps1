# Script para hacer copias de seguridad del proyecto SevillaRemodelingLLC
$fecha = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
$carpetaBackup = "C:/DEV/SevillaRemodelingLLC_Backups"
$nombreBackup = "SevillaRemodelingLLC_$fecha"
$rutaBackup = "$carpetaBackup/$nombreBackup"

# Crear la carpeta de backups si no existe
if (-not (Test-Path -Path $carpetaBackup)) {
    New-Item -ItemType Directory -Path $carpetaBackup | Out-Null
    Write-Host "Carpeta de backups creada en: $carpetaBackup"
}

# Crear la carpeta para este backup específico
New-Item -ItemType Directory -Path $rutaBackup | Out-Null

# Copiar todos los archivos excepto la carpeta .git y node_modules
Write-Host "Copiando archivos al backup..."
robocopy "C:/DEV/SevillaRemodelingLLC" $rutaBackup /E /XD ".git" "node_modules" "$carpetaBackup" /NFL /NDL /NJH /NJS /nc /ns /np

Write-Host "Backup completado: $rutaBackup"
Write-Host "Presiona cualquier tecla para continuar..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
