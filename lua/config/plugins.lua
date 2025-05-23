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
	{
		"onsails/lspkind.nvim"
	},
	{
		"mfussenegger/nvim-dap",
		event = "VeryLazy",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
			"theHamsta/nvim-dap-virtual-text",
		},
	},
	require("config.plugins.trouble"),
	require("config.plugins.whichkey"),
	require("config.plugins.cmp")
}
