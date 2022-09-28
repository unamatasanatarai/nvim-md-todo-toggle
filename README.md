# NeoVim Markdown style Todo Toggler

## installation

packer:
```
  use { "unamatasanatarai/nvim-md-todo-toggle" }
```



## usage

setup your keybinding
```
  vim.keymap.set("n", "<leader>t", M.toggle, { desc = "shortcut to run the command", noremap = true, silent = true })
```

## options

```
.setup{marker="x"}
```

command is: `:TDToggle`

![Nvim Todo Markdown Toggler in action](toggler.gif)
