return {
    {
        -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
        'folke/tokyonight.nvim',
        priority = 1000,
        config = function()
            require('tokyonight').setup {
                style = "storm",
                transparent = true, -- Enable this to disable setting the background color
                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = { italic = false },
                    keywords = { italic = false },
                    -- Background styles. Can be "dark", "transparent" or "normal"
                    sidebars = "dark", -- style for sidebars, see below
                    floats = "dark", -- style for floating windows
                },
            }
        end,
    },
    {
        'catppuccin/nvim',
        priority = 1000,
        config = function()
            require('catppuccin').setup {
                flavour = "mocha", -- latte, frappe, macchiato, mocha
                transparent_background = false, -- disables setting the background color.
                term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
                no_italic = true, -- Force no italic
            }
            vim.cmd.colorscheme('catppuccin')
        end,
    },
}

