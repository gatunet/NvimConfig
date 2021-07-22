-- Visual artifacts
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.list = true
vim.opt.listchars = { eol = '¬',tab = '─·', trail = '~', extends = '·', precedes = '·', space = '·' }
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "90"
vim.opt.cmdheight = 1
vim.opt.showmode = false

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Moving helpers
vim.opt.scrolloff = 10
vim.opt.scroll = 20
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Indent configs
vim.opt.smartindent = true
vim.opt.tabstop = 4 -- number of spaces that a <tab> counts for
vim.opt.shiftwidth = 4 -- number of spaces for each '>>'
vim.opt.softtabstop = 4 -- number of spaces that a <tab> counts for when performing editing operations
vim.opt.expandtab = true -- use the appropriate number of spaces to insert a <tab>

--Files
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = "/home/gabriel/.config/nvim/undodir"
vim.opt.undofile = true

-- Other settings
vim.opt.updatetime = 100
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = "menuone,noselect,noinsert"
vim.opt.shortmess = vim.opt.shortmess + "c"
vim.opt.timeoutlen = 100
