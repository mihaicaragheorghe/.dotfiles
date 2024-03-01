local mason_status, mason = pcall(require, "mason")
if not mason_status then
	vim.notify("Could not load mason")
	return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	vim.notify("Could not load mason-lspconfig")
	return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	vim.notify("Could not load mason-null-ls")
	return
end

-- enable mason
mason.setup()

mason_lspconfig.setup({
	ensure_installed = {
		"omnisharp",
		"lua_ls",
	},
	-- auto-install configured servers (with lspconfig)
	automatic_installation = true,
})

mason_null_ls.setup({
	-- list of formatters & linters for mason to install
	ensure_installed = {
		"stylua", -- lua
		"csharpier", -- csharp
		"clang-format", -- c, c++, objc, csharp..
		"markdownlint", -- markdown
		"prettier", -- html, css, json
	},
	-- auto-install configured formatters & linters (with null-ls)
	automatic_installation = true,
})
