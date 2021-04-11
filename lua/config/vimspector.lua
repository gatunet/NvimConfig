local opts = { noremap = true }

vim.g.vimspector_enable_mappings = 'HUMAN'
vim.cmd [[ packadd! vimspector ]]

vim.api.nvim_set_keymap('n', '<Leader>db', '<Plug>VimspectorToggleBreakpoint', opts)

