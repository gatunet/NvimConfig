vim.api.nvim_set_keymap('n', '<Leader>n', '<cmd>NvimTreeToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>r', '<cmd>NvimTreeRefresh<CR>', { noremap = true })
-- utils.map('n', '<Leader>f', '<cmd>NvimTreeFindFile<CR>')

vim.g.nvim_tree_side = 'right'
vim.g.nvim_tree_width = 45
vim.api.nvim_exec( [[ let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache', '__pycache__' ] ]], false )
vim.g.nvim_tree_gitignore = 1
vim.g.nvim_tree_auto_close = 1
vim.api.nvim_exec( [[ let g:nvim_tree_auto_ignore_ft = [ 'startify', 'dashboard' ] ]], false )
vim.g.nvim_tree_quit_on_open = 1 --0 by default, closes the tree when you open a file
vim.g.nvim_tree_follow = 1 --0 by default, this option allows the cursor to be updated when entering a buffer
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_hide_dotfiles = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_root_folder_modifier = ':~'
vim.g.nvim_tree_tab_open = 1 --0 by default, will open the tree when entering a new tab and the tree was previously open
vim.g.nvim_tree_width_allow_resize  = 1 --0 by default, will not resize the tree when opening a file
vim.g.nvim_tree_disable_netrw = 0 --1 by default, disables netrw
vim.g.nvim_tree_hijack_netrw = 0
vim.g.nvim_tree_add_trailing = 1
vim.g.nvim_tree_group_empty = 1
vim.api.nvim_exec( [[ let g:nvim_tree_show_icons = { 'git': 1, 'folders': 1, 'files': 1 } ]], false )
vim.api.nvim_exec([[ let g:nvim_tree_icons = { 'default': ' ' , 'symlink': ' ' , 'git': { 'unstaged': "  ", 'staged': "  ", 'unmerged': "  ", 'renamed': "  ", 'untracked': "  ", 'deleted': "  " }, 'folder': { 'default': " ", 'open': " ", 'empty': " ", 'empty_open': " ", 'symlink': " ", 'symlink_open': " ", } } ]], false)

