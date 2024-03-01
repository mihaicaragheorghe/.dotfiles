local success, nvimtree = pcall(require, "nvim-tree")
if not success then
    vim.notify("Could not load nvim-tree")
    return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

nvimtree.setup({
    renderer = {
        icons = {
            show = {
                git = true
            },
            glyphs = {
                git = {
                    untracked = "",
                },
            },
        },
    },
    -- disable window_picker for windows splits
    actions = {
        open_file = {
            window_picker = {
                enable = false,
            },
        },
    },
    git = {
        ignore = false 
    },
    filters = {
        dotfiles = true,
        custom = { "obj", "bin" },
    },
})
