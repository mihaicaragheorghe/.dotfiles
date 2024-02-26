# dotfiles

## First time setup

``` bash
mkdir $HOME/.dotfiles
git init --bare $HOME/.dotfiles
```

alias git commands to `dotfiles`

``` bash
alias dotfiles='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

Add the remote and hide untracked files

``` bash
dotfiles config --local status.showUntrackedFiles no
dotfiles remote add origin git@github.com:mihaicaragheorghe/dotfiles.git
```

# Set up on a new machine

Clone the repository as a bare repository

``` bash
git clone --separate-git-dir=$HOME/.dotfiles git@github.com:mihaicaragheorghe/dotfiles.git ~
```

# Add files

``` bash
dotfiles add .config/tmux/tmux.conf

dotfiles commit -m "Add. tmux"

dotfiles push
```
