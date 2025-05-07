local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config["luals"] = {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = { ".luarc.json", ".luarc.jsonc", ".git" },
	capabilities = capabilities,
	settings = { Lua = {
		workspace = {
			library = vim.api.nvim_get_runtime_file("", true)
		},
		diagnostics = {
			globals = { "vim" }
		}
	}}
}

vim.lsp.enable("luals")

vim.lsp.config["haxe"] = {
	cmd = { "node", "/home/madbanana22/dev/haxe/haxe-language-server/bin/haxels.js" },
	filetypes = { "haxe", "hxml" },
	root_markers = { "Project.xml", "hxformat.json", "*.hxml", "haxelib.json" },
	capabilities = capabilities
}
vim.lsp.enable("haxe")
