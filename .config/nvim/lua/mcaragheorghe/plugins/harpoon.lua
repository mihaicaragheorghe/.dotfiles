return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup()

        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
        vim.keymap.set("n", "<leader>A", function() harpoon:list():prepend() end)
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<leader>v", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<leader>b", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<leader>n", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<leader>m", function() harpoon:list():select(4) end)

        vim.keymap.set("n", "<leader><C-h>", function() harpoon:list():replace_at(1) end)
        vim.keymap.set("n", "<leader><C-j>", function() harpoon:list():replace_at(2) end)
        vim.keymap.set("n", "<leader><C-k>", function() harpoon:list():replace_at(3) end)
        vim.keymap.set("n", "<leader><C-l>", function() harpoon:list():replace_at(4) end)

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<Tab>", function() harpoon:list():next() end)
        vim.keymap.set("n", "<S-Tab>", function() harpoon:list():prev() end)
    end
}
