syntax on
filetype plugin indent on

set encoding=utf8

set number
set relativenumber
set clipboard+=unnamed

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

set scrolloff=10
set nowrap

set laststatus=2
set cursorline
hi cursorline cterm=none ctermbg=235

set backspace=eol,start,indent

set hlsearch
set incsearch
set ignorecase
set smartcase

set showcmd
set showmode
set showmatch
set ruler

set splitright
set splitbelow

set undofile
set undodir=$HOME/.vim/undo

set background=dark
set hidden

set noerrorbells
set novisualbell
set vb t_vb=
set tm=500

let mapleader = " "

nnoremap <leader>p :Ex<CR>
nnoremap <leader>x :!chmod +x %<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap < <gv^
vnoremap > >gv^

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzz
nnoremap N Nzz

xnoremap <leader>p "_dP
nnoremap <leader>d "_d
vnoremap <leader>d "_d
nnoremap <leader>D "_D
nnoremap x "_x

nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>
nnoremap <leader>j :lnext<CR>
nnoremap <leader>k :lprev<CR>

nnoremap Q <nop>
nnoremap <Esc> :nohlsearch<CR>
nnoremap <Esc><Esc> <C-\><C-n>

