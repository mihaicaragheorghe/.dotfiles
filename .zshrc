# ==================
# Oh My Zsh 
# ==================
if [[ -d "$HOME/.oh-my-zsh" ]]; then
    export ZSH="$HOME/.oh-my-zsh"
    ZSH_THEME="robbyrussell"
    source "$ZSH/oh-my-zsh.sh"
fi

plugins=(git)

# local bin
export PATH=$HOME/.local/bin:/usr/local/bin:$PATH

# go
export PATH=$HOME/go/bin:$PATH

# opencode
export PATH=/Users/mcaragheorghe/.opencode/bin:$PATH


# neovim on linux
[[ -d "/opt/nvim-linux-x86_64/bin" ]] && export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# bun completions
[ -s "/Users/mcaragheorghe/.bun/_bun" ] && source "/Users/mcaragheorghe/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
