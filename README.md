##🌙 Tsukiyomi Fetch

Una configuración elegante de ZSH con FastFetch responsive que muestra tus imágenes favoritas


#✨ Características

Característica	 Descripción
*🖼️ Fetch con Anime	Muestra una imagen anime aleatoria cada vez que abres la terminal
*📱 Responsivo	Se adapta automáticamente al tamaño de tu ventana (grande, mediana, pequeña)
*⚡ Ultra Rápido	Optimizado para cero lag (DISABLE_MAGIC_FUNCTIONS=true)
*💾 Backups Inteligentes	Guarda automáticamente copias de tu .zshrc al editarlo
*🎨 Personalizable	Fácil de modificar y extender a tu gusto
*🔧 Comandos Útiles	Aliases y funciones que ahorran tiempo
*🚀 Instalación Rápida

##Método 1: Clonar y Ejecutar (Recomendado)
bash

# Clona el repositorio
git clone https://github.com/Zaenily-LinganBerry/Tsukiyomi-Fetch.git

# Entra en la carpeta
cd Tsukiyomi-Fetch

# Haz ejecutable el instalador
chmod +x install.sh

# Ejecuta la instalación
./install.sh

Método 2: Instalación Manual
bash

# 1. Copia la configuración
cp .zshrc ~/.zshrc

# 2. Crea la carpeta para imágenes
mkdir -p ~/Tsukiyomi-Fetch/fastfetch/pngs

# 3. (Opcional) Añade algunas imágenes de ejemplo
# Descarga tus PNGs favoritos y colócalos en:
# ~/Tsukiyomi-Fetch/fastfetch/pngs/

# 4. Recarga la configuración
source ~/.zshrc

🖼️ Añadir Tus Imágenes

    Descarga o crea imágenes en formato PNG

    Colócalas en la carpeta:
    bash

~/Tsukiyomi-Fetch/fastfetch/pngs/

    ¡Listo! Cada terminal nueva mostrará una imagen aleatoria

Consejo: Las imágenes con fondo transparente o fondo oscuro suelen verse mejor.
🎮 Comandos Esenciales
Comando	Descripción	Ejemplo
zshc	Edita tu .zshrc con backup automático	zshc
ff	Muestra Tsukiyomi Fetch manualmente	ff
update	Actualiza el sistema (Fedora/DNF)	update
clr	Limpia la terminal completamente	clr
mkcd	Crea carpeta y entra en ella	mkcd nueva-carpeta
..	Sube un directorio	..
...	Sube dos directorios	...
📁 Estructura del Proyecto
text

Tsukiyomi-Fetch/
├── .zshrc              # Configuración principal
├── README.md           # Este archivo
├── install.sh          # Instalador automático
├── uninstall.sh        # Desinstalador
├── LICENSE             # Licencia MIT
└── fastfetch/
    └── pngs/           # Aquí van tus imágenes (vacío por defecto)

⚙️ Requisitos del Sistema

    ZSH (shell)

    FastFetch (alternativa rápida a neofetch)

    Oh-My-Zsh (opcional pero recomendado)

    Powerlevel10k (para el prompt, opcional)

Instalar dependencias en Fedora:
bash

sudo dnf install zsh fastfetch
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

🔧 Personalización
Cambiar el editor por defecto:

Edita estas líneas en tu .zshrc:
bash

export EDITOR='nano'    # Cambia 'kwrite' por tu editor favorito
export VISUAL='nano'

Añadir más aliases:

Añade al final de la sección de aliases:
bash

alias mi-alias='comando que quieras'

🐛 Solución de Problemas
"No se muestran imágenes"

    Verifica que tienes archivos .png en ~/Tsukiyomi-Fetch/fastfetch/pngs/

    Asegúrate de que FastFetch está instalado: fastfetch --version

"El comando zshc no funciona"

    Recarga la configuración: source ~/.zshrc

    Verifica que el archivo ~/.zshrc existe

"Error al ejecutar install.sh"

    Dale permisos de ejecución: chmod +x install.sh

    Ejecuta con bash: bash install.sh

🤝 Contribuir

¿Tienes ideas para mejorar Tsukiyomi Fetch? ¡Me encantaría recibirlas!

    Haz un Fork del repositorio

    Crea una rama: git checkout -b mi-mejora

    Haz tus cambios y commitea: git commit -m 'Añadí: descripción'

    Haz push: git push origin mi-mejora

    Abre un Pull Request

📜 Licencia

Este proyecto está bajo la Licencia MIT. Eso significa que puedes:

    Usarlo libremente (personal/comercial)

    Modificarlo

    Distribuirlo

    Usarlo en proyectos privados

Solo necesitas incluir el aviso de copyright original.

Texto completo: LICENSE
🌟 Agradecimientos

    FastFetch por ser rápido y eficiente

    Oh-My-Zsh comunidad por los plugins

    Powerlevel10k por el mejor prompt

    Todas las waifus/husbandos que alegran nuestras terminales

Creado con ❤️ por Zaenily-LinganBerry
"Porque la terminal también merece ser bonita"
