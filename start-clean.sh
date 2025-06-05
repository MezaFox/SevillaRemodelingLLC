#!/bin/bash

echo "🧹 Limpiando cache y archivos temporales..."
rm -rf .astro
rm -rf node_modules/.astro
rm -rf dist

echo "🔧 Verificando permisos..."
chmod +x node_modules/.bin/*

echo "🚀 Iniciando servidor de desarrollo..."
echo "📍 URL: http://localhost:4000"
echo "⚠️  Si ves errores de 'message port', simplemente ignóralos y recarga la página"

# Iniciar con opciones específicas para evitar problemas
NODE_ENV=development npm run dev 