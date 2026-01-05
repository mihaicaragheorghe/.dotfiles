export PATH=$HOME/.local/bin:/usr/local/bin:$PATH

# ==================
# Oh My Zsh 
# ==================
if [[ -d "$HOME/.oh-my-zsh" ]]; then
    export ZSH="$HOME/.oh-my-zsh"
    ZSH_THEME="robbyrussell"
    source "$ZSH/oh-my-zsh.sh"
fi

# Neovim on linux
[[ -d "/opt/nvim-linux-x86_64/bin" ]] && export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

plugins=(git)
