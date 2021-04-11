local saga = require('lspsaga')
saga.init_lsp_saga()

vim.api.nvim_set_keymap('n', '<Leader>lf', '<cmd>Lspsaga lsp_finder<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ca', '<cmd>Lspsaga code_action<CR>', { silent = true })
vim.api.nvim_set_keymap('v', '<Leader>rca', '<cmd>Lspsaga <C-U>Lspsaga range_code_action<CR>', { silent = true })

vim.api.nvim_set_keymap('n', '<Leader>hd', '<cmd>Lspsaga hover_doc<CR>', { silent = true })
-- vim.api.nvim_set_keymap('n', '<C-f>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1)<CR>', { silent = true })
-- vim.api.nvim_set_keymap('n', '<C-b>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(-1)<CR>', { silent = true })

vim.api.nvim_set_keymap('n', '<Leader>sh', '<cmd>Lspsaga signature_help<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>rn', '<cmd>Lspsaga rename<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>pd', '<cmd>Lspsaga preview_definition<CR>', { silent = true })

vim.api.nvim_set_keymap('n', '<leader>ld', '<cmd>Lspsaga show_line_diagnostics<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>jn', '<cmd>Lspsaga diagnostic_jump_next<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>np', '<cmd>Lspsaga diagnostic_jump_prev<CR>', { silent = true })

-- vim.api.nvim_set_keymap('n', '<leader>cot', '<cmd>Lspsaga open_floaterm<CR>', { silent = true })
-- tnoremap <silent> <leader>cct <C-\><C-n>:Lspsaga close_floaterm<CR>

