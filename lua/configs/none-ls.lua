local null_ls = require("none-ls")

local opts = {
  sources = {
    null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.goimports_reviser
  },
}

return opts
