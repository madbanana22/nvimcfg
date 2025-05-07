return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000
	},
	{
		"jdonaldson/vaxe",
		lazy = true,
		ft = {"haxe", "hxml"}
	},
	{
		"nvim-telescope/telescope.nvim",
		lazy = false
	},
	{
		"nvim-tree/nvim-web-devicons"
	},
	{
		"sharkdp/fd"
	},
	{
		"nvim-treesitter/nvim-treesitter"
	},
	{
		"vim-airline/vim-airline"
	},
	{
		"hrsh7th/cmp-nvim-lsp",
		priority = 1
	},
	{
		"hrsh7th/nvim-cmp"
	},
	{
		"nvim-tree/nvim-tree.lua",
		opts = {}
	},
	{
		"jiangmiao/auto-pairs"
	},
	{
		"nvim-treesitter/nvim-treesitter"
	},
	{
		"akinsho/toggleterm.nvim", config = true
	},
	require("config.plugins.trouble"),
	require("config.plugins.whichkey")
}
