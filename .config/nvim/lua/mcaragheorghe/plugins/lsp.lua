return {
    "neovim/nvim-lspconfig",
    dependencies = {
        -- Automatically install LSPs and related tools to stdpath for Neovim
        -- Mason must be loaded before its dependents so we need to set it up here.
        'mason-org/mason.nvim',
        'mason-org/mason-lspconfig.nvim',

        -- Allows extra capabilities provided by blink.cmp
        'saghen/blink.cmp',
    },

    config = function()
        local capabilities = require('blink.cmp').get_lsp_capabilities()

        require("mason").setup()
        require('mason-lspconfig').setup({
            ensure_installed = {
                "lua_ls",
                "gopls",
                "omnisharp"
            },
            automatic_installation = true,
            handlers = {
                function(server_name) -- default handler (optional)
                    require("lspconfig")[server_name].setup {
                        capabilities = capabilities
                    }
                end,
            },
        })

        vim.diagnostic.config({
            severity_sort = true,
            float = {
                focusable = true,
                border = "rounded",
                source = true,
            },
            underline = { severity = vim.diagnostic.severity.ERROR },
            virtual_text = true
        })
    end
}
