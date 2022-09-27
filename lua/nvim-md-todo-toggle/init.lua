local function toggle()
  local line = vim.api.nvim_get_current_line()
  local opened, _ = string.find(line, "- %[ %]")
  local closed, _ = string.find(line, "- %[x%]")
  local cursor_pos = vim.api.nvim_win_get_cursor(0)

  if opened then
    vim.cmd(':.,.s/\\[ \\]/[x]/')
  elseif closed then
    vim.cmd(':.,.s/\\[x\\]/[ ]/')
  end
  vim.cmd(":noh")
  vim.cmd(":call cursor(" .. cursor_pos[1] .. ", " .. cursor_pos[2] + 1 .. ")")
end


return {
  toggle = toggle
}
