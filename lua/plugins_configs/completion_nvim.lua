vim.cmd([[ autocmd BufEnter * lua require'completion'.on_attach() ]])
vim.g.completion_timer_cycle = 10
