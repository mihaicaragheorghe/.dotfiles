local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	vim.notify("Could not load treesitter")
	return
end

treesitter.setup({
	-- enable syntax highlighting
	highlight = {
		enable = true,
	},
	-- enable indentation
	indent = { enable = true },
	-- enable autotagging (w/ nvim-ts-autotag plugin)
	autotag = { enable = true },
	-- ensure these language parsers are installed
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"c_sharp",
		"markdown",
		"yaml",
		"bash",
		"html",
		"css",
		"lua",
		"vim",
		"dockerfile",
		"gitignore",
	},
	-- auto install above language parsers
	auto_install = true,
})
