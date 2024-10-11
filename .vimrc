" Options

set number
set relativenumber

set nowrap
set cursorline
set scrolloff=10

set hlsearch
set incsearch
set ignorecase
set smartcase

set splitright
set splitbelow
set inccommand=split

set termguicolors
set background=dark

set undofile
set undodir=$HOME/.vim/undo

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set breakindent

" Set leader key
let mapleader = " "

" Key mappings
nnoremap <leader>e :Ex<CR>

" Use J and K to move visual blocks up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Center cursor on vertical jumps
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv

" Clipboard and deletion mappings
xnoremap <leader>p "_dP
nnoremap <leader>d "_d
vnoremap <leader>d "_d
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y
nnoremap x "_x

" Clear search highlights
nnoremap <Esc> :nohlsearch<CR>

" Disable Q and format on leader+f
nnoremap Q <nop>

" Exit terminal mode by double pressing Esc
tnoremap <Esc><Esc> <C-\><C-n>

" Disable arrow keys in normal mode
nnoremap <left> :echo "Use h to move!!"<CR>
nnoremap <right> :echo "Use l to move!!"<CR>
nnoremap <up> :echo "Use k to move!!"<CR>
nnoremap <down> :echo "Use j to move!!"<CR>

" Split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

