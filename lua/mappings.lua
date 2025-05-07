require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "j", "k")
map("n", "k", "j")
-- map("i", "jk", "<ESC>")

-- control-s to save and auto format go
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- gopher mappings
map("n", "<leader>gsj", "<cmd> GoTagAdd json <cr>") -- Add json struct to tags
map("n", "<leader>gif", "<cmd> GoIfErr <cr>")       -- Add json struct to tags

-- select all with ctrl-a
map("n", "<C-a>", "gg0VG")

-- eslint mappings
map(
  "n",
  "<leader>jel", "a// eslint-disable-next-line no-console<ESC>"
  , { desc = "Disable eslint for next line" }
)
map("i", "jel", "// eslint-disable-next-line no-console<cr>")

-- move cursor mappings
map("n", "H", "^")
map("n", "L", "$")

