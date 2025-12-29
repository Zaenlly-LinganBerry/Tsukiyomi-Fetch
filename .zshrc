# ------------------------------------------------------------------------------
# 1. TSUKIYOMI FETCH (DISEÑO RESPONSIVO AUTOMÁTICO)
# ------------------------------------------------------------------------------
if [[ -z "$FASTFETCH_SHOWN" && $- == *i* && -t 0 ]]; then
    export FASTFETCH_SHOWN=1

ANIME_DIR="$HOME/Tsukiyomi-Fetch/fastfetch/pngs"
if [[ -d "$ANIME_DIR" ]]; then
    images=("$ANIME_DIR"/*.png(N))
    (( ${#images} )) && RANDOM_PNG=$images[$(( RANDOM % ${#images} + 1 ))]
fi

    if [[ -n "$RANDOM_PNG" ]]; then
        # Obtenemos el ancho actual de la terminal
        local cols=$(tput cols)

        if [[ "$cols" -ge 120 ]]; then
            # Ventana Grande: Logo completo (45)
            fastfetch -l "$RANDOM_PNG" --logo-type kitty --logo-width 45 --logo-padding-right 5
        elif [[ "$cols" -ge 85 ]]; then
            # Ventana Mediana: Logo reducido (30) para que quepa el texto al lado
            fastfetch -l "$RANDOM_PNG" --logo-type kitty --logo-width 30 --logo-padding-right 3
        else
            # Ventana Pequeña: Logo arriba, texto abajo (modo compacto)
            # Usamos --logo-position top para que no intente poner texto al lado
            fastfetch -l "$RANDOM_PNG" --logo-type kitty --logo-width 20 --logo-position top
        fi
    else
        fastfetch --logo fedora
    fi
fi

# 2. POWERLEVEL10K INSTANT PROMPT (Viene después para mantener el color)

# ------------------------------------------------------------------------------

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then

  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"

fi
# ------------------------------------------------------------------------------
# 3. VARIABLES DE ENTORNO Y RUTAS (PATH)
# ------------------------------------------------------------------------------
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR='kwrite'
export VISUAL='kwrite'

typeset -U path
path=($HOME/.local/bin $HOME/go/bin $HOME/.cargo/bin /usr/local/bin /usr/bin /bin $path)
export PATH

ZSH_AUTOSUGGEST_MANUAL_REBIND=1
# ------------------------------------------------------------------------------
# 4. OH MY ZSH & PLUGINS
# ------------------------------------------------------------------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# ESTA LÍNEA ES VITAL: Mata el lag de bracketed-paste-magic
DISABLE_MAGIC_FUNCTIONS=true

plugins=(
    git
    fzf
    sudo
    web-search
    copyfile
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Optimización de las sugerencias (añadir después del source)
ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

# ------------------------------------------------------------------------------
# 5. OPCIONES DE LA SHELL
# ------------------------------------------------------------------------------
setopt autocd
setopt interactivecomments
setopt magicequalsubst
setopt promptsubst

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt share_history

# ------------------------------------------------------------------------------
# 6. ALIAS Y FUNCIONES
# ------------------------------------------------------------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias esc='cd ~/Escritorio && ls'
alias docs='cd ~/Documentos && ls'
alias desc='cd ~/Descargas && ls'
alias dnf='sudo dnf'
alias update='sudo dnf upgrade --refresh'
alias install='sudo dnf install'
alias ff='fastfetch'
alias ll='ls -la --color=auto'
alias clr='clear; echo -en "\e[3J"'

mkcd() { mkdir -p "$1" && cd "$1"; }
# Función para editar zshrc con backup automático
zshconfig() {
    local backup_dir="$HOME/.zsh_backups"
    # Crear directorio de backups si no existe (Silencioso)
    [[ -d "$backup_dir" ]] || mkdir -p "$backup_dir"

    # Crear backup con fecha y hora: zshrc_20251229_1430.bak
    local stamp=$(date +%Y%m%d_%H%M%S)
    cp "$HOME/.zshrc" "$backup_dir/zshrc_${stamp}.bak"

    # Mantener solo los últimos 10 backups para no llenar el disco (BX500)
    (cd "$backup_dir" && ls -t zshrc_*.bak | tail -n +11 | xargs -r rm)

    echo "✔ Backup creado en $backup_dir"
    ${EDITOR:-kwrite} "$HOME/.zshrc"

    # Al salir, preguntar si queremos aplicar cambios
    echo -n "¿Recargar configuración? (y/n): "
    read -q k
    if [[ $k == "y" ]]; then
        echo "\n"
        exec zsh
    fi
}


# Reemplazar alias previo
alias zshc=zshconfig
# ------------------------------------------------------------------------------
# 7. CONFIGURACIÓN DE P10K (Carga final)
# ------------------------------------------------------------------------------
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
