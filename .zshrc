export PATH=$HOME/.local/bin:/usr/local/bin:$PATH

# ==================
# Oh My Zsh 
# ==================
if [[ -d "$HOME/.oh-my-zsh" ]]; then
    export ZSH="$HOME/.oh-my-zsh"
    ZSH_THEME="robbyrussell"
    source "$ZSH/oh-my-zsh.sh"
fi

plugins=(git)

if [[ -x "$(command -v nvim)" ]]; then
    alias vim=nvim
fi

bindkey -v

