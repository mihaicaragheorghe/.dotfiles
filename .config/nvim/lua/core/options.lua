local opt = vim.opt

opt.relativenumber = true -- relative line numbers
opt.number = true -- shows current line number when relative number is on
opt.wrap = false -- no line wrapping
opt.hlsearch = true -- highlight all matches, not just first
opt.termguicolors = true -- the terminal supports many colors
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- mixed case - use case-sensitive
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom
opt.scrolloff = 8 -- number of lines above and below the cursor when scrolling
opt.clipboard:append("unnamedplus") -- use system clipboard
opt.cursorline = true -- cursor line
opt.backspace = "indent,eol,start"

-- persistent undo
opt.undodir = vim.fn.stdpath("config") .. "/undo"
opt.undofile = true

-- indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
