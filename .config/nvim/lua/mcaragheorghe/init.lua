require("mcaragheorghe.options")
require("mcaragheorghe.keymaps")

-- Highlight when yanking (copying) text
local augroup = vim.api.nvim_create_augroup
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = augroup("HighlightYank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

