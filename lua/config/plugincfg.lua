require "cmp".setup {
	sources = {
		name = { "nvim_lsp" }
	}
}

require("toggleterm").setup()

local nvtree_api = require("nvim-tree.api")

vim.keymap.set('n', '<leader>n', function()
  if vim.fn.bufname():match 'NvimTree_' then
    vim.cmd.wincmd 'p'
  else
		nvtree_api.tree.open()
  end
end, { desc = 'Nvimtree: toggle' })
