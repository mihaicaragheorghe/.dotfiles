vim.pack.add({ "https://github.com/tpope/vim-fugitive" })

vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git status" })
vim.keymap.set("n", "<leader>gd", vim.cmd.Gdiffsplit, { desc = "Git diff split" })
vim.keymap.set("n", "<leader>gl", "<cmd>Git log<CR>", { desc = "Git log" })

vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>", { desc = "Diffget target (ours)" })
vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>", { desc = "Diffget merge (theirs)" })

local augroup = vim.api.nvim_create_augroup("mcaragheorghe_fugitive", {})
vim.api.nvim_create_autocmd("FileType", {
	group = augroup,
	pattern = "fugitive",
	callback = function()
		local bufnr = vim.api.nvim_get_current_buf()
		local opts = { buffer = bufnr, remap = false }

		vim.keymap.set("n", "<leader>p", function()
			vim.cmd.Git("push")
		end, vim.tbl_extend("force", opts, { desc = "Git push" }))

		vim.keymap.set("n", "<leader>P", function()
			vim.cmd.Git({ "pull", "--rebase" })
		end, vim.tbl_extend("force", opts, { desc = "Git pull --rebase" }))

		vim.keymap.set(
			"n",
			"<leader>t",
			":Git push -u origin ",
			vim.tbl_extend("force", opts, { desc = "Git push -u origin ..." })
		)
	end,
})

