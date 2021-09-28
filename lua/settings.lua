local options = {
    -- Visual artifacts
    number = true,
    relativenumber = true,
    cursorline = true,
    list = true,
    listchars = { eol = '¬',tab = '─·', trail = '~', extends = '·', precedes = '·', space = '·' },
    signcolumn = "yes",
    colorcolumn = "90",
    cmdheight = 2,
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
    undodir = "/home/gabriel/.config/nvim/undodir",
    undofile = true,

    -- Other settings
    updatetime = 100,
    termguicolors = true,
    clipboard = "unnamedplus",
    completeopt = "menuone,noselect,noinsert",
    shortmess = vim.opt.shortmess + "c",
    timeoutlen = 100,
}

for option, value in pairs(options) do
    vim.opt[option] = value
end

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

-- Python
vim.g.python3_host_prog = '/home/gabriel/.pyenv/versions/py3nvim/bin/python'
