return {
    {
        dir = '~/Projects/polarnight.nvim',
        name = 'polarnight',
        lazy = false,
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
    }
}
