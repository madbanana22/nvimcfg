require("config.binds")

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.wrap = true

vim.opt.scrolloff = 8

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false

vim.diagnostic.config({
	virtual_text = true,
	underline = true
})

vim.opt.whichwrap = {["h"] = true, ["l"] = true,
		["<"] = true, [">"] = true,
		["["] = true, ["]"] = true}

-- Nvimtree
vim.g.loaded_netrw = 1 -- do not load netrw
vim.g.loaded_netrwplugin = 1

vim.opt.termguicolors = true

vim.g.nvim_tree_respect_buf_cwd = 1

require("nvim-tree").setup({
	update_focused_file = {
		enable = true,
		update_root = true
	}
})

-- Airline
vim.g.airline_theme = "catppuccin"
-- Powerline symbols
vim.g.airline_left_sep = ""
vim.g.airline_left_alt_sep = ""
vim.g.airline_right_sep = ""
vim.g.airline_right_alt_sep = ""
vim.g.airline_symbols.branch = ""
vim.g.airline_symbols.readonly = ""
vim.g.airline_symbols.linenr = "☰"
vim.g.airline_symbols.maxlinenr = ""
vim.g.airline_symbols.dirty = "*"

vim.g.airline_section_x = ""
vim.g.airline_skip_empty_sections = true
