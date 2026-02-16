local function eslintFix(opts)
  local filepath = vim.api.nvim_buf_get_name(0)
  local output = vim.fn.system(("npx eslint " .. filepath .. " --fix"))
  vim.api.nvim_command("edit!")
  if (vim.v.shell_error == 0) then
    return print("Errors fixed")
  else
    return print(("Error: " .. output))
  end
end
return vim.api.nvim_create_user_command("EslintFix", eslintFix, {desc = "Fixes the current buffer's Eslint errors"})
