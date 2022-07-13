local options = {
    -- Visual artifacts
    number = true,
    relativenumber = true,
    cursorline = true,
    list = true,
    listchars = { eol = '¬',tab = '─·', trail = '~', extends = '·', precedes = '·', space = '·' },
    signcolumn = "yes",
    colorcolumn = "90",
    cmdheight = 1,
    showmode = false,

    -- Search
    ignorecase = true,
    smartcase = true,

    -- Moving helpers
    scrolloff = 10,
    scroll = 20,
    splitright = true,
    splitbelow = true,

    -- Indent configs
    smartindent = true,
    tabstop = 4,
    shiftwidth = 4,
    softtabstop = 4,
    expandtab = true,

    --Files
    swapfile = false,
    backup = false,
    undodir = "/Users/gabriel/.config/nvim/undodir",
    undofile = true,
    autoread = true,
    fileencoding = "utf-8",

    -- Other settings
    updatetime = 300,
    termguicolors = true,
    clipboard = "unnamedplus",
    completeopt = { "menuone", "noselect" },
    shortmess = vim.opt.shortmess + "c",
    timeoutlen = 100,
    mouse = 'a'
}

for option, value in pairs(options) do
    vim.opt[option] = value
end

-- ColorScheme

-- Sonokai
vim.g.sonokai_style = "shusia"
vim.g.sonokai_enable_italic = 1
vim.g.sonokai_transparent_background = 0

vim.cmd([[colorscheme sonokai]])

-- Language Specific

-- Typescrip
vim.cmd([[autocmd FileType typescript set tabstop=2]])
vim.cmd([[autocmd FileType typescript set shiftwidth=2]])
vim.cmd([[autocmd FileType typescript set softtabstop=2]])
vim.cmd([[autocmd FileType typescript set colorcolumn=120]])

-- JSON
vim.cmd([[autocmd FileType json set tabstop=2]])
vim.cmd([[autocmd FileType json set shiftwidth=2]])
vim.cmd([[autocmd FileType json set softtabstop=2]])

-- HTML
vim.cmd([[autocmd FileType html set tabstop=2]])
vim.cmd([[autocmd FileType html set shiftwidth=2]])
vim.cmd([[autocmd FileType html set softtabstop=2]])

-- CSS
vim.cmd([[autocmd FileType css set tabstop=2]])
vim.cmd([[autocmd FileType css set shiftwidth=2]])
vim.cmd([[autocmd FileType css set softtabstop=2]])

-- Python
-- vim.g.python3_host_prog = '/home/gabriel/.pyenv/versions/py3nvim/bin/python'
