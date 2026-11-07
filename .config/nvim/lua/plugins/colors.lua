vim.pack.add({ "https://github.com/folke/tokyonight.nvim" })
vim.pack.add({ "https://github.com/mihaicaragheorghe/polarnight.nvim" })

---@diagnostic disable-next-line: missing-fields
require("tokyonight").setup({
  styles = {
    comments = { italic = false },
    keywords = { italic = false },
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
})

require("polarnight").setup({
  transparent = true,
  uniform_diff_bg = true,
  style = {
    italic = false,
  },
})

-- Load the colorscheme here.
-- Like many other themes, this one has different styles, and you could load
-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
vim.cmd.colorscheme("tokyonight-night")
