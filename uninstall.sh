#!/bin/bash
echo "Desinstalando Tsukiyomi Fetch..."
echo "================================"

if [ -f ~/.zshrc.backup.* ]; then
    # Encontrar el backup más reciente
    latest_backup=$(ls -t ~/.zshrc.backup.* | head -1)

    echo "¿Restaurar backup anterior? (y/n)"
    read -n 1 respuesta
    echo ""

    if [[ $respuesta == "y" || $respuesta == "Y" ]]; then
        cp "$latest_backup" ~/.zshrc
        echo "✓ Configuración anterior restaurada"
    fi
fi

echo "¿Eliminar carpeta de imágenes? (y/n)"
read -n 1 respuesta
echo ""

if [[ $respuesta == "y" || $respuesta == "Y" ]]; then
    rm -rf ~/Tsukiyomi-Fetch
    echo "✓ Carpeta de imágenes eliminada"
fi

echo "¡Listo! Recarga tu terminal."
