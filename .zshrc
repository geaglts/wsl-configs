if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

# NVM CONFIG
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export ZSH="/home/geaglts/.oh-my-zsh"

# THEME
ZSH_THEME="amuse"

# PLUGINS
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# ALIASES
alias hyper="cmd.exe /c hyper"
alias paste="powershell.exe -command 'Get-Clipboard' | sed -e 's/\r\n$//g'"
alias aqui="pwd | clip.exe"
alias toi="cd $(powershell.exe /c Get-Clipboard)"

# === PNPM ALIASES
alias al=pnpm
# PNPM ALIASES ===

alias t=touch
alias vim=nvim
alias vimconfig='nvim ~/.config/nvim/init.vim'
alias dev="cd /home/geaglts/dev"
alias dev_p="cd /home/geaglts/dev/current_projects"
alias update="sudo apt update && sudo apt upgrade -y"
alias e="explorer.exe"
alias reset="source ~/.zshrc"
alias zshconfig="code ~/.zshrc"
alias borra="sudo rm -rf"
alias code.="code . && exit"

# === GIT ALIASES
alias g="git"
alias gl="git log --oneline --graph"
alias gs="git status"
alias comit="git add . && git commit -m"
alias amend="git add . && git commit --amend -m"
alias gc="git checkout"
alias gcb="git checkout -b"
alias clona="git clone"

function subir() {
    if [ "$1" = "" ]; then
        git push origin "$(git branch --show-current)"
    else
        git push origin "$1"
    fi
}

function bajar() {
    git pull origin "$(git branch --show-current)"
}

# GIT ALIASES ===

# LINUX UTILS
function kill-port() {
    sudo kill -9 $(sudo lsof -t -i:$1)
}

alias py="python3"

alias fig="docker-compose"
alias doquer="docker"

# added by travis gem
[ ! -s /home/geaglts/.travis/travis.sh ] || source /home/geaglts/.travis/travis.sh

eval "$(starship init zsh)"

# Temporal
alias wolf="cd /home/geaglts/dev/javascript/apis/wolf"

# Network
alias getip="ip addr | grep eth0"
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
