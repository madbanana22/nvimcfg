require "catppuccin".setup {
	flavour = "mocha",
	term_colors = true,
	integrations = {
		cmp = true,
		nvimtree = true,
		treesitter = true
	}
}

local ls = require "luasnip"

local cmp = require "cmp"
local lspkind = require "lspkind"
cmp.setup {
	mapping = {
		['<S-CR>'] = function(fallback)
			if cmp.visible() then
				cmp.confirm()
			else
				fallback()
			end
		end,
		['<Tab>'] = function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end,
		['<S-Tab>'] = function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end
	},
	snippet = {
		expand = function(args)
			ls.lsp_expand(args.body)
		end
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" }
	}),
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol', -- show only symbol annotations
      maxwidth = {
        -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
        -- can also be a function to dynamically calculate max width such as
        -- menu = function() return math.floor(0.45 * vim.o.columns) end,
        menu = 50, -- leading text (labelDetails)
        abbr = 50, -- actual suggestion item
      },
      ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
      show_labelDetails = true, -- show labelDetails in menu. Disabled by default

      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
    })
  }
}

require('lspkind').init({
    mode = 'symbol_text',
    preset = 'codicons',

    symbol_map = {
      Text = "󰉿",
      Method = "󰆧",
      Function = "󰊕",
      Constructor = "",
      Field = "󰜢",
      Variable = "󰀫",
      Class = "󰠱",
      Interface = "",
      Module = "",
      Property = "󰜢",
      Unit = "󰑭",
      Value = "󰎠",
      Enum = "",
      Keyword = "󰌋",
      Snippet = "",
      Color = "󰏘",
      File = "󰈙",
      Reference = "󰈇",
      Folder = "󰉋",
      EnumMember = "",
      Constant = "󰏿",
      Struct = "󰙅",
      Event = "",
      Operator = "󰆕",
      TypeParameter = "",
    },
})

require("toggleterm").setup()

local nvtree_api = require("nvim-tree.api")

vim.keymap.set('n', '<leader>n', function()
  if vim.fn.bufname():match 'NvimTree_' then
    vim.cmd.wincmd 'p'
  else
		nvtree_api.tree.open()
  end
end, { desc = 'Nvimtree: toggle' })

local dap = require "dap"
local dapui = require "dapui"
local dap_vtxt = require "nvim-dap-virtual-text"

dap_vtxt.setup()

dap.configurations = {
	haxe = {
		{
			name = "Launch .hl",
			type = "hl",
			request = "launch",
			program = function()
				return vim.fn.input("Path to hl: ", vim.fn.getcwd() .. "/", "file") or vim.fn.getcwd().."/export/hl/obj/ApplicationMain.hl"
			end,
			cwd = "${workspaceFolder}",
			stopAtEntry = false,
			MIMode = "lldb"
		}
	}
}

dapui.setup()

vim.fn.sign_define("DapBreakpoint", { text = "" })
vim.fn.sign_define("DapBreakpointCondition", { text = "" })
vim.fn.sign_define("DapBreakpointRejected", { text = "" })

dap.listeners.before.attach.dapui_config = function()
	dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
	dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
	dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
	dapui.close()
end
