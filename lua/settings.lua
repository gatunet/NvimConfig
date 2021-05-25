-- Using a call to the "traditional" way, tobe changed when the new way works properly.

-- vim.api.nvim_set_option('', )
-- vim.o.{option}: global options
-- vim.bo.{option}: buffer-local options
-- vim.wo.{option}: window-local options

-- vim.api.nvim_set_option()
-- vim.api.nvim_buf_set_option()
-- vim.api.nvim_win_set_option()

-- Visual artifacts
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.cursorline = true
vim.wo.list = true
-- vim.wo.listchars = "eol:¬,tab:─·,trail:~,extends:·,precedes:·,space:·,"
vim.cmd([[set listchars=eol:¬,tab:─·,trail:~,extends:·,precedes:·,space:·,]])
vim.wo.signcolumn = "yes:1"
vim.wo.colorcolumn = "90"
vim.o.cmdheight = 1
vim.o.showmode = false

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Moving helpers
vim.o.scrolloff = 10
vim.wo.scroll = 20
vim.o.splitright = true
vim.o.splitbelow = true

-- Indent configs
vim.bo.smartindent = true
-- vim.bo.tabstop = 4 -- number of spaces that a <tab> counts for
vim.cmd([[set tabstop=4]])
-- vim.bo.shiftwidth = 4 -- number of spaces for each '>>'
vim.cmd([[set shiftwidth=4]])
-- vim.bo.softtabstop = 4 -- number of spaces that a <tab> counts for when performing editing operations
vim.cmd([[set softtabstop=4]])
-- vim.bo.expandtab = true -- use the appropriate number of spaces to insert a <tab>
vim.cmd([[set expandtab]])

--Files
-- vim.bo.swapfile = false
vim.cmd([[set noswapfile]])
-- vim.o.backup = false
vim.cmd([[set nobackup]])
vim.o.undodir = "/home/gartunius/.config/nvim/undodir"
-- vim.bo.undofile = true
vim.cmd([[set undofile]])

-- Other settings
vim.o.updatetime = 100
vim.o.termguicolors = true
vim.o.clipboard = "unnamedplus"
vim.o.completeopt = "menuone,noselect"
-- vim.o.shortmess = vim.o.shortmess + "c"
vim.cmd([[set shortmess+=c]])
vim.o.timeoutlen = 100
