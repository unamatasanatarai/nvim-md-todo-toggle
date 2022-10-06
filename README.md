# NeoVim Markdown style Todo Toggler

## Installation

Packer:
```
  use { "unamatasanatarai/nvim-md-todo-toggle" }
```



## Usage

Setup your keybinding

```
local status_ok, todo = pcall(require, "nvim-md-todo-toggle")
if not status_ok then
  return
end

todo.setup {
  marker = "x"
}

vim.keymap.set("n", "<leader>t", todo.toggle, { desc = "Toggle a readme marker", noremap = true, silent = true })
```

## Options

```
.setup{
  marker = "x"
}
```

Command is: `:TDToggle`

![Nvim Todo Markdown Toggler in action](toggler.gif)
