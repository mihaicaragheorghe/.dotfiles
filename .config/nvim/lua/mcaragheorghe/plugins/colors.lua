---@diagnostic disable: missing-fields
return {
    {
        'shaunsingh/nord.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.nord_disable_background = true
            vim.g.nord_enable_sidebar_background = true
            vim.g.nord_uniform_diff_background = true
            vim.g.nord_contrast = true
            vim.g.nord_italic = false
            vim.cmd.colorscheme('nord')
        end,
    },
    {
        -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
        'folke/tokyonight.nvim',
        priority = 1000,
        config = function()
            require('tokyonight').setup {
                style = "storm",
                transparent = true,
                terminal_colors = true,
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = { italic = false },
                    keywords = { italic = false },
                    sidebars = 'dark', -- style for sidebars, see below
                    floats = 'dark',   -- style for floating windows
                },
            }
        end,
    },
}
