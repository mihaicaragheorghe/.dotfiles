return {
    "neovim/nvim-lspconfig",
    dependencies = {
        -- Automatically install LSPs and related tools to stdpath for Neovim
        -- Mason must be loaded before its dependents so we need to set it up here.
        "mason-org/mason.nvim",
        "mason-org/mason-lspconfig.nvim",

        -- Allows extra capabilities provided by blink.cmp
        "saghen/blink.cmp",

        {
            -- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
            -- used for completion, annotations and signatures of Neovim apis
            "folke/lazydev.nvim",
            ft = "lua",
            opts = {
                library = {
                    -- Load luvit types when the `vim.uv` word is found
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
        },
    },

    config = function()
        local capabilities = vim.tbl_deep_extend(
            "force",
            vim.lsp.protocol.make_client_capabilities(),
            require("blink.cmp").get_lsp_capabilities({}, false))

        require("mason").setup()
        require("mason-lspconfig").setup({
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
