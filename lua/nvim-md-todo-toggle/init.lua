local M = {}
M.config = {
  marker = "x"
}
M.setup = function(args)
  M.config = vim.tbl_deep_extend("force", M.config, args or {})

  vim.api.nvim_create_user_command(
    'TDToggle',
    M.toggle,
    { bang = true, desc = 'Toggle between - [ ] and - [x]' }
  )
end


M.toggle = function()
  local line = vim.api.nvim_get_current_line()
  local opened, _ = string.find(line, "- %[ %]")
  local closed, _ = string.find(line, "- %[" .. M.config.marker .. "%]")
  local cursor_pos = vim.api.nvim_win_get_cursor(0)

  if opened then
    vim.cmd(':.,.s/\\[ \\]/[' .. M.config.marker .. ']/')
  elseif closed then
    vim.cmd(':.,.s/\\[' .. M.config.marker .. '\\]/[ ]/')
  end
  vim.cmd(":noh")
  vim.cmd(":call cursor(" .. cursor_pos[1] .. ", " .. cursor_pos[2] + 1 .. ")")
end


return M
