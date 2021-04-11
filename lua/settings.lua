local utils = require('utils')

local cmd = vim.cmd
local indent = 4

cmd 'filetype plugin indent on'

-- Scopes o = global; b = buffer; w = window;
utils.opt('o', 'hidden', true)
utils.opt('o', 'scrolloff', 4 )
utils.opt('o', 'smartcase', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'hlsearch', true)
utils.opt('o', 'ignorecase', true)
utils.opt('o', 'backspace', "indent,eol,start")
utils.opt('o', 'scrolloff', 10)
utils.opt('o', 'updatetime', 100)
utils.opt('o', 'listchars', 'eol:¬,tab:─·,trail:~,extends:·,precedes:·,space:·')
utils.opt('o', 'backup', false)
utils.opt('o', 'undodir', "/home/chomuske/.config/nvim/undodir/")
utils.opt('o', 'incsearch', true)
utils.opt('o', 'cmdheight', 2)
utils.opt('o', 'errorbells', false)
-- utils.opt('o', 'completeopt', "menuone,noselect,noinsert")
utils.opt('o', 'completeopt', "noselect,menuone")
utils.opt('o', 'lazyredraw', true)
utils.opt('o', 'timeoutlen', 500)
utils.opt('o', 'termguicolors', true)
-- utils.opt('o', 'shortmess', "+=c")

utils.opt('b', 'expandtab', true)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'smartindent', true)
utils.opt('b', 'tabstop', indent)
utils.opt('b', 'softtabstop', indent)
utils.opt('b', 'autoindent', true)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'swapfile', false)
utils.opt('b', 'undofile', true)

utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
utils.opt('w', 'cursorline', true)
utils.opt('w', 'scroll', 13) -- number of lines to scroll with <C-U> or <C-D>
utils.opt('w', 'signcolumn', "yes:1")
utils.opt('w', 'colorcolumn', "90")

