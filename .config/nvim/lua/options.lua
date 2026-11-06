-- Enable faster startup by caching compiled Lua modules
vim.loader.enable()

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  See `:help 'clipboard'`
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

-- [[ Setting options ]]
--  See `:help vim.o`
--  For more options, you can see `:help option-list`
--
vim.o.mouse = "a"
vim.o.showmode = true
vim.o.winborder = "single"

vim.o.number = true
vim.o.relativenumber = true

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.breakindent = true

vim.o.scrolloff = 10
vim.o.wrap = false

vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.cursorline = true
vim.o.signcolumn = "yes"

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.undofile = true
vim.o.undodir = os.getenv("HOME") .. "/.vim/neovim/undo"

-- Preview substitutions live
vim.o.inccommand = "split"

vim.o.termguicolors = true
vim.o.background = "dark"
vim.o.colorcolumn = "120"

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true
