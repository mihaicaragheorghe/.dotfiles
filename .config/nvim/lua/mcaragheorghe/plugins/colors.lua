return {
    {
        dir = '~/Projects/nord.nvim',
        name = 'nord',
        lazy = false,
        priority = 1000,
        config = function()
            require('nord').setup {
                transparent = true,
                uniform_diff_bg = true,
                style = {
                    italic = false
                }
            }
            vim.cmd.colorscheme('nord')
        end
    }
}
