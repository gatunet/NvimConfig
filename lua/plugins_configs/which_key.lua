require("which-key").setup{
    icons = {
        breadcrumb = "»",
        separator = "->",
        group = "+"
    },
    window = {
        position = "bottom",
        border = "none",
        padding = {2, 2, 2, 2}
    }
}

local wk = require('which-key')

 wk.register({

    w = {'<cmd>write<CR>', 'save file'},
    v = {'<cmd>vertical split<CR>', 'split window vertically'},
    s = {'<cmd>split<CR>', 'split window'},
    h = {'<cmd>noh<CR>', 'clear highlights'},
    m = {'<cmd>MaximizerToggle<CR>', 'maximaze screen'},
    t = {'<cmd>terminal<CR>', 'open neovim terminal'},
    e = {'<cmd>NvimTreeToggle<CR>', 'open nvimtree'},
    r = {'<cmd>NvimTreeRefresh<CR>', 'refresh nvimtree'},
    ["/"] = "Comment",

    f = {
        name = '+find',
        f = {'<cmd>Telescope find_files<CR>', 'files'},
        g = {'<cmd>Telescope live_grep<CR>', 'grep'},
        t = {'<Cmd>Telescope help_tags<CR>', 'help tags'},
        c = {'<Cmd>Telescope commands<CR>', 'commands'},
        h = {'<Cmd>Telescope command_history<CR>', 'history'},
    },

    b = {
        name = '+buffer',
        d = { '<Space>bd', 'order by dir' },
        l = { '<Space>bl', 'order by language' },
    },
    l = {
        name = '+lsp',
        c = { '<cmd>Lspsaga code_action<CR>', 'code actions' },
        i = { '<cmd>LspInfo<CR>', 'info' },
        r = { '<cmd>Lspsaga rename<CR>', 'rename' },
        s = { '<cmd>Telescope lsp_document_symbols<CR>', 'document symbols' },
        S = { '<cmd>Telescope lsp_workspace_symbols<CR>', 'workspace symbols' },
        p = { '<cmd>Lspsaga preview_definition<CR>', 'preview definition' },
        f = { '<cmd>Lspsaga lsp_finder', 'lsp finder' },
        l = { '<cmd>Lspsaga show_line_diagnostics<CR>', 'line diagnostics' }
    },
    g = {
        name = '+git',
        s = { '<cmd>Telescope git_status<CR>', 'status' }
    }
}, {
  mode = "n",
  prefix = "<leader>",
  buffer = nil,
  silent = true,
  noremap = true,
  -- nowait = false,
})

