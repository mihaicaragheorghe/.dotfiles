local keymap = vim.keymap

vim.g.mapleader = " "

-- Normal --
-- General
keymap.set("n", "#", "o<ESC>k") -- # for empty line below
keymap.set("i", "jj", "<ESC>:set rnu<CR>") -- jj instead of ESC
keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>') -- Esc will clear highlighted text
keymap.set("n", "x", '"_x') -- x will register into the black hole register
keymap.set("n", "<leader>d", '"_d') -- leader + d will register into black hole register
keymap.set("n", "<C-u>", "<C-u>zz") -- Ctrl + u will also center cursor
keymap.set("n", "<C-d>", "<C-d>zz") -- Ctrl + d will also center cursor

-- Buffer navigation
keymap.set("n", ")", ":bn<CR>") -- ) for next buffer
keymap.set("n", "(", ":bp<CR>") -- ( for previous buffer
keymap.set("n", "D", ":bd<CR>") -- D for deleting buffer

-- Move text up and down
keymap.set("n", "<A-j>", ":m .+1<CR>==")
keymap.set("n", "<A-k>", ":m .-2<CR>==")
keymap.set("n", "<A-Up>", ":m .-2<CR>==")
keymap.set("n", "<A-Down>", ":m .+1<CR>==")

-- Resize with arrows
keymap.set("n", "<C-Up>", ":resize -2<CR>")
keymap.set("n", "<C-Down>", ":resize +2<CR>")
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- Tabs
keymap.set("n", "<leader>t", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close tab 
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next 
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous 

-- Visual --
-- General
keymap.set("v", "p", '"_dP') -- p will overwrite the selected text

-- Stay in indent mode
keymap.set("v", "<", "<gv^")
keymap.set("v", ">", ">gv^")

-- Move text up and down
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv")

-- Visual Block --
-- Move text up and down
keymap.set("x", "J", ":m '>+1<CR>gv=gv")
keymap.set("x", "K", ":m '<-2<CR>gv=gv")
keymap.set("x", "<A-j>", ":m '>+1<CR>gv=gv")
keymap.set("x", "<A-k>", ":m '<-2<CR>gv=gv") 
keymap.set("x", "<A-Down>", ":m '>+1<CR>gv=gv")
keymap.set("x", "<A-Up>", ":m '<-2<CR>gv=gv") 

-- Plugins

-- telescope
keymap.set("n", "<C-p>", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you typ
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- vim-maximizer
keymap.set("n", "<C-m>", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>") -- toggle file explorer
