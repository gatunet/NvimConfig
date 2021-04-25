-- vim.api.nvim_set_option('', )
-- vim.o.{option}: global options
-- vim.bo.{option}: buffer-local options
-- vim.wo.{option}: window-local options

-- Visual artifacts
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.cursorline = true
vim.wo.list = true
vim.wo.listchars = "eol:¬,tab:─·,trail:~,extends:·,precedes:·,space:·,"
vim.wo.signcolumn = "yes"
vim.wo.colorcolumn = "90"
vim.o.cmdheight = 2

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
vim.bo.tabstop = 4 -- number of spaces that a <tab> counts for
vim.bo.shiftwidth = 4 -- number of spaces for each '>>'
vim.bo.softtabstop = 4 -- number of spaces that a <tab> counts for when performing editing operations
vim.bo.expandtab = true -- use the appropriate number of spaces to insert a <tab>

--Files
vim.bo.swapfile = false
vim.o.backup = false
vim.o.undodir = "~/.config/nvim/undodir"
vim.bo.undofile = true

-- Other settings
vim.o.updatetime = 300
vim.o.termguicolors = true
