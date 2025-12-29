#!/bin/bash
echo "Instalando Tsukiyomi Fetch..."
echo "=============================="

# Verificar si tenemos .zshrc
if [ -f .zshrc ]; then
    # Hacer backup si ya existe
    if [ -f ~/.zshrc ]; then
        cp ~/.zshrc ~/.zshrc.backup.$(date +%s)
        echo "✓ Backup del .zshrc actual creado"
    fi

    # Copiar nuevo .zshrc
    cp .zshrc ~/.zshrc
    echo "✓ Configuración copiada"

    # Crear carpeta para imágenes
    mkdir -p ~/Tsukiyomi-Fetch/fastfetch/pngs
    echo "✓ Carpeta para imágenes creada: ~/Tsukiyomi-Fetch/fastfetch/pngs/"

    echo ""
    echo "¡Instalación completada!"
    echo ""
    echo "Ahora puedes:"
    echo "1. Añadir imágenes PNG a ~/Tsukiyomi-Fetch/fastfetch/pngs/"
    echo "2. Recargar la terminal con: source ~/.zshrc"
    echo "3. O simplemente abrir una terminal nueva"
    echo ""
    echo "Comando útil: 'zshc' para editar la configuración"
else
    echo "Error: No se encontró el archivo .zshrc"
    exit 1
fi
