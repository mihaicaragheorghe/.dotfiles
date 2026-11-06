vim.pack.add({ "https://github.com/folke/tokyonight.nvim" })
---@diagnostic disable-next-line: missing-fields
require("tokyonight").setup({
	styles = {
		comments = { italic = false },
		keywords = { italic = false },
		sidebars = "dark", -- style for sidebars, see below
		floats = "dark", -- style for floating windows
	},
})

-- Load the colorscheme here.
-- Like many other themes, this one has different styles, and you could load
-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
vim.cmd.colorscheme("tokyonight-night")

