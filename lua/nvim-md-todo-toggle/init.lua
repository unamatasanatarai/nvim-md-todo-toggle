local greet = require'nvim-md-todo-toggle'

return {
  setup = greet.setup,
  todomake = greet.toggle_todo_marker,
}
