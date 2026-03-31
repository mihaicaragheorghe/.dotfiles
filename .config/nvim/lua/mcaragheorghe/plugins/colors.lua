return {
    {
        'mihaicaragheorghe/polarnight.nvim',
        priority = 1000,
        config = function()
            require('polarnight').setup {
                transparent = true,
                uniform_diff_bg = true,
                style = {
                    italic = false
                }
            }
            vim.cmd.colorscheme('polarnight')
        end
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            style = "night",
            styles = {
                comments = { italic = false },
                keywords = { italic = false },
                sidebars = "dark", -- style for sidebars, see below
                floats = "dark",   -- style for floating windows
            },
        },
    }
}
