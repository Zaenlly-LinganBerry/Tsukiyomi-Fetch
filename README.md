# Tsukiyomi Fetch

Una configuración simple de ZSH con FastFetch responsive.

## ¿Qué hace?

- Muestra imágenes anime aleatorias al abrir la terminal
- Se adapta automáticamente al tamaño de la ventana
- Tiene backups automáticos cuando editas la configuración
- Es rápido y no tiene lag

## Instalación manual

# **1. Copia el archivo `.zshrc` a tu home:

cp .zshrc ~/.zshrc

1.2   Crea la carpeta para imágenes:

mkdir -p ~/Tsukiyomi-Fetch/fastfetch/pngs

## *2.  Añade tus imágenes PNG favoritas a esa carpeta

## *3. Recarga tu terminal:

source ~/.zshrc


## **Comandos útiles

    zshc - Edita la configuración (hace backup automático)

    ff - Muestra el fetch manualmente

    update - Actualiza el sistema (Fedora)
    
## **Requisitos

    ZSH

    FastFetch

    Oh-My-Zsh (opcional, pero recomendado)
    
    
    Creado con cariño para terminales bonitas.
    

    
## **PASO 4: Crea un INSTALLER simple**

# Crea un script de instalación básico
kwrite ~/Tsukiyomi-Fetch-Project/install.sh
