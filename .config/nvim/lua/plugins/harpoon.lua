vim.pack.add({
  {
    src = "https://github.com/ThePrimeagen/harpoon",
    version = "harpoon2",
    dependencies = {
      { src = "https://github.com/nvim-lua/plenary.nvim" },
    },
  },
})

local harpoon = require("harpoon")
harpoon:setup({})

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "[A]dd to Harpoon" })
vim.keymap.set("n", "<leader>A", function() harpoon:list():prepend() end, { desc = "Prepend to harpoon" })
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Toggle harpoon menu" })

vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Harpoon 1" })
vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Harpoon 2" })
vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Harpoon 3" })
vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Harpoon 4" })
vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end, { desc = "Harpoon 5" })

vim.keymap.set("n", "<leader><C-1>", function() harpoon:list():replace_at(1) end, { desc = "Replace harpoon 1" })
vim.keymap.set("n", "<leader><C-2>", function() harpoon:list():replace_at(2) end, { desc = "Replace harpoon 2" })
vim.keymap.set("n", "<leader><C-3>", function() harpoon:list():replace_at(3) end, { desc = "Replace harpoon 3" })
vim.keymap.set("n", "<leader><C-4>", function() harpoon:list():replace_at(4) end, { desc = "Replace harpoon 4" })
vim.keymap.set("n", "<leader><C-5>", function() harpoon:list():replace_at(5) end, { desc = "Replace harpoon 5" })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<Tab>", function() harpoon:list():next() end, { desc = "Next harpoon" })
vim.keymap.set("n", "<S-Tab>", function() harpoon:list():prev() end, { desc = "Prev harpoon" })
-- stylua: ignore end
