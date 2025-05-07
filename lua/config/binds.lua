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
