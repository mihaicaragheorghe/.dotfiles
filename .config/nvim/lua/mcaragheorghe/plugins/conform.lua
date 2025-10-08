return { -- Autoformat
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
        {
            "<leader>f",
            function() require("conform").format { async = true, lsp_format = "fallback" } end,
            mode = "",
            desc = "[F]ormat buffer",
        },
    },
    opts = {
        notify_on_error = false,
        formatters_by_ft = {
            lua = { "stylua" },
            go = { "gofmt" },
            c = { "clang-format" },
            cpp = { "clang-format" },
            javascript = { "prettier" },
            typescript = { "prettier" },
            python = { "black" },
        },
        formatters = {
            ["clang-format"] = {
                prepend_args = { "-style=file", "-fallback-style=LLVM" },
            },
        },
        -- Conform can also run multiple formatters sequentially
        -- python = { "isort", "black" },
        --
        -- You can use 'stop_after_first' to run the first available formatter from the list
        -- javascript = { "prettierd", "prettier", stop_after_first = true },
    },
}
