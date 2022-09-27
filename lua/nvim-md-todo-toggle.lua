local module = require("nvim-md-todo-toggle.init")

local M = {}
M.config = {}
M.setup = function(args)
  M.config = vim.tbl_deep_extend("force", M.config, args or {})
  vim.keymap.set("n", "<leader>t", module.toggle, { desc = "shortcut to run the command", noremap = true, silent = true })

  vim.api.nvim_create_user_command(
    'TDToggle',
    module.toggle,
    { bang = true, desc = 'Toggle between - [ ] and - [x]' }
  )
end

M.toggle = module.toggle

return M
