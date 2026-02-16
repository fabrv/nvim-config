(fn eslintFix [opts]
  (let [
        filepath (vim.api.nvim_buf_get_name 0)
        output (vim.fn.system (.. "npx eslint " filepath " --fix"))]
    (vim.api.nvim_command "edit!")
    (if (= vim.v.shell_error 0)
        (print "Errors fixed")
        (print (.. "Error: " output))
    ))
  )

(vim.api.nvim_create_user_command
  "EslintFix"
  eslintFix
  {:desc "Fixes the current buffer's Eslint errors"})
