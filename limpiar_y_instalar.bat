@echo off
echo Limpiando proyecto...

REM Detener procesos de Node.js si están corriendo
taskkill /F /IM node.exe >nul 2>&1

REM Eliminar node_modules y package-lock.json
if exist node_modules rmdir /s /q node_modules
if exist package-lock.json del package-lock.json
if exist .astro rmdir /s /q .astro

echo Instalando dependencias...
call npm install

echo Iniciando servidor de desarrollo...
call npx astro dev

pause
