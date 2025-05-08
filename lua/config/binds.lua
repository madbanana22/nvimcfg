vim.g.leader = " "
vim.g.localleader = "\\"

local map = vim.keymap.set

local t_builtin = require("telescope.builtin")

map("n", "<leader>ff", t_builtin.find_files, { desc = "Telescope: find files" })
map("n", "<leader>fg", t_builtin.live_grep, { desc = "Telescope: live grep" })
map("n", "<leader>fb", t_builtin.buffers, { desc = "Telescope: buffers" })

map("n", "<leader>th", "<Cmd>ToggleTerm dir=getcwd() direction=horizontal<CR>", { desc = "ToggleTerm: horizontal" })
map("n", "<leader>tv", "<Cmd>ToggleTerm dir=getcwd() direction=vertical<CR>", { desc = "ToggleTerm: vertical" })
map("n", "<leader>tf", "<Cmd>ToggleTerm dir=getcwd() direction=float<CR>", { desc = "ToggleTerm: floating" })
map("n", "<leader>tt", "<Cmd>ToggleTerm dir=getcwd() direction=tab<CR>", { desc = "ToggleTerm: tab" })

map("t", "<esc>", "<C-\\><C-n>")
map('t', '<C-h>', [[<Cmd>wincmd h<CR>]])
map('t', '<C-j>', [[<Cmd>wincmd j<CR>]])
map('t', '<C-k>', [[<Cmd>wincmd k<CR>]])
map('t', '<C-l>', [[<Cmd>wincmd l<CR>]])

map("n", "<C-h>", "<C-w>h", { desc = "Focus Left" })
map("n", "<C-j>", "<C-w>j", { desc = "Focus Down" })
map("n", "<C-k>", "<C-w>k", { desc = "Focus Up" })
map("n", "<C-l>", "<C-w>l", { desc = "Focus Right" })

map("n", "<C-A-H>", "<C-w>H", { desc = "Move Window Left" })
map("n", "<C-A-J>", "<C-w>J", { desc = "Move Window Down" })
map("n", "<C-A-K>", "<C-w>K", { desc = "Move Window Up" })
map("n", "<C-A-L>", "<C-w>L", { desc = "Move Window Right" })

local dap = require "dap"
local dapui = require "dapui"
local dap_vtxt = require "nvim-dap-virtual-text"

map("n", "<leader>dt", function() dap.toggle_breakpoint() end, { desc = "Toggle Breakpoint" })
map("n", "<leader>dc", function() dap.continue() end, { desc = "Continue" })
map("n", "<leader>di", function() dap.step_into() end, { desc = "Step Into" })
map("n", "<leader>do", function() dap.step_over() end, { desc = "Step Over" })
map("n", "<leader>du", function() dap.step_out() end, { desc = "Step Out" })
map("n", "<leader>dr", function() dap.repl.open() end, { desc = "Open REPL" })
map("n", "<leader>dl", function() dap.run_last() end, { desc = "Run last" })
map("n", "<leader>dq", function() dap.terminate() dapui.close() dap_vtxt.toggle() end, { desc = "Terminate" })
map("n", "<leader>db", function() dap.list_breakpoints() end, { desc = "List Breakpoints" })
map("n", "<leader>de", function() dap.set_exception_breakpoints({"all"}) end, { desc = "Set Exception Breakpoints" })
