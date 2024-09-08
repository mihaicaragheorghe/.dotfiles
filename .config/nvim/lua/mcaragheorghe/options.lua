vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.scrolloff = 10

vim.opt.clipboard = "unnamedplus"

vim.opt.wrap = false

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.signcolumn = "yes"

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Decrease update time
vim.opt.updatetime = 100

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Terminal colors
vim.opt.termguicolors = true
vim.g.have_nerd_font = true
vim.opt.background = "dark"

-- Persistent undo
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undo"

-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true
