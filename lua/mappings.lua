local map = vim.keymap.set

-- Control the buffer
map('n', '<Tab>', ':bnext<CR>', { desc = 'Next buffer', silent = true })
map('n', '<S-Tab>', ':bprevious<CR>', { desc = 'Previous buffer', silent = true })
map('n', '<leader>x', ':bdelete<CR>', { desc = 'Close buffer', silent = true })

map("n", ";", ":", { desc = "CMD enter command mode" })

-- control-s to save and auto format go
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- select all with ctrl-a
map("n", "<C-a>", "gg0VG")
