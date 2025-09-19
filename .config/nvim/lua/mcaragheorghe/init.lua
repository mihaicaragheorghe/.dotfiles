require("mcaragheorghe.options")
require("mcaragheorghe.keymaps")
require("mcaragheorghe.lazy")

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = augroup("mcaragheorghe-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

autocmd('LspAttach', {
    group = augroup('mcaragheorghe_LspAttach', {}),
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<C-.>", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("i", "<C-.>", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set('n', '<leader>q', function() vim.diagnostic.setloclist() end, opts)
        vim.keymap.set("n", "<leader>e", function() vim.diagnostic.open_float({ focusable = true }) end, opts)
        vim.keymap.set("n", "<leader>r", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "gI", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, opts)
        vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("i", "<C-p>", function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = 1, float = true }) end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.jump({ count = -1, float = true }) end, opts)
    end
})
