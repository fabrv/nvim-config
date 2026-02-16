vim.wo.relativenumber = true
vim.opt.clipboard = 'unnamedplus'

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

require("configs.lazy")
require("commands.eslint")
