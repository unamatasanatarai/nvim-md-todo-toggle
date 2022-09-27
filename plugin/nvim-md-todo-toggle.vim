" Toggle betwen markdown todo's (checkboxes)
" Last Change:  2022 Sep 27
" Maintainer:   Unamata Sanatarai
" License:      GNU General Public License v3.0

if exists('g:loaded_nvim_md_todo_toggle') | finish | endif " prevent loading file twice

let s:save_cpo = &cpo
set cpo&vim

command! Whid lua require'nvim-md-todo-toggle'

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_nvim_md_todo_toggle = 1
