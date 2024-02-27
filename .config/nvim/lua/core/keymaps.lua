local keymap = vim.keymap

vim.g.mapleader = " "

-- Normal --
-- General
keymap.set("n", "#", "o<ESC>k") -- # for empty line below
keymap.set("i", "jj", "<ESC>:set rnu<CR>") -- jj instead of ESC
keymap.set("n", "<C-u>", "<C-u>zz") -- Ctrl + u will also center cursor
keymap.set("n", "<C-d>", "<C-d>zz") -- Ctrl + d will also center cursor

-- Window navigation
keymap.set("n", "<C-l>", "<C-w>l") -- CTRL + l to move to right window
keymap.set("n", "<C-k>", "<C-w>k") -- CTRL + k to move to above window
keymap.set("n", "<C-j>", "<C-w>j") -- CTRL + j to move to below window
keymap.set("n", "<C-h>", "<C-w>h") -- CTRL + h to move to left window

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
