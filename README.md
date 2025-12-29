
<div align="center">

# 🌙 **TSUKIYOMI FETCH**

### *La terminal que siempre soñaste tener*
  
[![GitHub Stars](https://img.shields.io/github/stars/Zaenlly-LinganBerry/Tsukiyomi-Fetch?style=for-the-badge&logo=github)](https://github.com/Zaenlly-LinganBerry/Tsukiyomi-Fetch/stargazers)
[![License: MIT](https://img.shields.io/badge/License-MIT-red?style=for-the-badge)](https://opensource.org/licenses/MIT)
[![ZSH](https://img.shields.io/badge/Shell-ZSH-green?style=for-the-badge&logo=gnu-bash)](https://www.zsh.org/)
[![FastFetch](https://img.shields.io/badge/Powered%20by-FastFetch-orange?style=for-the-badge)](https://github.com/fastfetch-cli/fastfetch)

*Una configuración elegante de ZSH que muestra tus imágenes anime favoritas de forma responsive*

**✨ Cada terminal, una sorpresa diferente ✨**

</div>

---

## 🎯 **¿QUÉ HACE ESTE PROYECTO?**

| 🔥 Característica | 💡 Descripción |
|-------------------|----------------|
| **🖼️ Anime Aleatorio** | Cada vez que abres la terminal, muestra una imagen diferente de tu colección |
| **📱 Diseño Responsivo** | Se adapta automáticamente: Grande (≥120cols), Mediano (≥85cols), Pequeño (<85cols) |
| **⚡ Velocidad Extrema** | Optimizado para CERO lag. Adiós a la lentitud de otros configs de ZSH |
| **💾 Backups Inteligentes** | Al editar tu configuración, guarda automáticamente copias de seguridad |
| **🎨 Fácil Personalización** | Cambia, modifica, extiende. Es TUYO |

---

## 🚀 **INSTALACIÓN EN 3 PASOS**

### **Opción 1: Instalador Automático (RECOMENDADO)**
```bash
# 1. Clona el repositorio
git clone https://github.com/Zaenlly-LinganBerry/Tsukiyomi-Fetch.git

# 2. Entra en la carpeta
cd Tsukiyomi-Fetch

# 3. Ejecuta el instalador
chmod +x install.sh && ./install.sh
```

### **Opción 2: Instalación Manual**
```bash
# 1. Copia la configuración
cp .zshrc ~/.zshrc

# 2. Crea la carpeta para imágenes
mkdir -p ~/Tsukiyomi-Fetch/fastfetch/pngs

# 3. Recarga tu terminal
source ~/.zshrc
```

---

## 🖼️ **¿CÓMO AÑADIR TUS IMÁGENES?**

1. **Descarga imágenes PNG** (con fondo transparente se ven mejor)
2. **Colócalas en esta carpeta:**
   ```bash
   ~/Tsukiyomi-Fetch/fastfetch/pngs/
   ```
3. **¡Listo!** La próxima terminal mostrará una imagen aleatoria

> 💡 **Consejo:** Busca "anime png transparent" en Google para mejores resultados

---

## 🎮 **COMANDOS ESENCIALES**

### **🏷️ NAVEGACIÓN**
```bash
zshc      # Edita tu .zshrc (con backup automático)
ff        # Muestra Tsukiyomi Fetch manualmente
clr       # Limpia la terminal COMPLETAMENTE
mkcd      # Crea carpeta y entra en ella
..        # Sube un directorio
...       # Sube dos directorios
```

### **🔄 SISTEMA (Fedora)**
```bash
update    # Actualiza el sistema completo
install   # Instala paquetes nuevos
dnf       # Atajo para sudo dnf
```

---

## ⚙️ **REQUISITOS**

| Herramienta | Descripción | Cómo instalarlo |
|-------------|-------------|-----------------|
| **ZSH** | El shell que usamos | `sudo dnf install zsh` |
| **FastFetch** | Muestra la info del sistema | `sudo dnf install fastfetch` |
| **Oh-My-Zsh** | Framework para ZSH (opcional) | [Instrucciones aquí](https://ohmyz.sh/) |
| **Powerlevel10k** | El mejor prompt (opcional) | `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k` |

---

## 🐛 **¿PROBLEMAS? SOLUCIONES RÁPIDAS**

<details>
<summary><strong>📂 "No se muestran imágenes"</strong></summary>

1. Verifica que tienes archivos `.png` en la carpeta:
   ```bash
   ls ~/Tsukiyomi-Fetch/fastfetch/pngs/
   ```
2. Asegúrate que FastFetch está instalado:
   ```bash
   fastfetch --version
   ```
</details>

<details>
<summary><strong>⚡ "Comandos no funcionan"</strong></summary>

Recarga tu configuración:
```bash
source ~/.zshrc
```
O simplemente cierra y abre una nueva terminal.
</details>

<details>
<summary><strong>🔧 "Error en install.sh"</strong></summary>

Ejecuta manualmente:
```bash
bash install.sh
```
O dale permisos primero:
```bash
chmod +x install.sh
```
</details>

---

## 🏗️ **ESTRUCTURA DEL PROYECTO**

```
Tsukiyomi-Fetch/
├── 📄 .zshrc              # CONFIGURACIÓN PRINCIPAL
├── 📄 README.md           # Estás leyendo esto
├── ⚙️ install.sh          # Instalador automático
├── ⚙️ uninstall.sh        # Por si quieres desinstalar
├── 📄 LICENSE             # Licencia MIT
└── 📁 fastfetch/
    └── 📁 pngs/           # 👈 AQUÍ VAN TUS IMÁGENES
```

---

## 🤝 **¿QUIERES CONTRIBUIR?**

**¡Me encantaría recibir tus ideas!** 

1. **Haz un Fork** 🍴 del repositorio
2. **Crea una rama:** `git checkout -b mi-super-idea`
3. **Haz tus cambios** y commitea: `git commit -m 'Añadí: algo increíble'`
4. **Haz push:** `git push origin mi-super-idea`
5. **Abre un Pull Request** 📬

---

## 📜 **LICENCIA**

Este proyecto está bajo la **Licencia MIT**.  
Puedes usarlo, modificarlo, distribuirlo y hasta venderlo (si quieres).  
Solo pido que incluyas el aviso de copyright original.

**Texto completo:** [LICENSE](LICENSE)

---

<div align="center">

## **🌟 ¡DALE UNA ESTRELLA SI TE GUSTA! 🌟**

Cada ⭐ motiva a seguir mejorando el proyecto.

---

### **Creado con ❤️ por [Zaenlly-LinganBerry](https://github.com/Zaenlly-LinganBerry)**

*"Autodidacta. Linux. Aprendiendo haciendo."*

**🌙 月読があなたを見守っています 🌙**

</div>
