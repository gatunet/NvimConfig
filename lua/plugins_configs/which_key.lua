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
    t = {"<cmd>lua require('FTerm').toggle()<CR>", 'open neovim terminal'},
    e = {'<cmd>NvimTreeToggle<CR>', 'open nvimtree'},
    r = {'<cmd>NvimTreeRefresh<CR>', 'refresh nvimtree'},
    ["/"] = "Comment",

    f = {
        name = '+find',
        f = { '<cmd>Telescope find_files<CR>', 'files' },
        g = { '<cmd>Telescope live_grep<CR>', 'grep' },
        t = { '<cmd>Telescope help_tags<CR>', 'help tags' },
        c = { '<cmd>Telescope commands<CR>', 'commands' },
        h = { '<cmd>Telescope command_history<CR>', 'history' },
        b = { '<cmd>Telescope buffers<CR>', 'buffers' },
        a = { '<cmd>lua require("harpoon.mark").add_file()<CR>', 'add file to harpoon' },
        e = { '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', 'edit menu' },
    },

    b = {
        name = '+buffer',
        d = { '<cmd>BufferOrderByDirectory<CR>', 'order by dir' },
        l = { '<cmd>BufferOrderByLanguage<CR>', 'order by language' },
    },
    l = {
        name = '+lsp',
        c = { '<cmd>Lspsaga code_action<CR>', 'code actions' },
        i = { '<cmd>LspInfo<CR>', 'info' },
        r = { '<cmd>Lspsaga rename<CR>', 'rename' },
        s = { '<cmd>Telescope lsp_document_symbols<CR>', 'document symbols' },
        S = { '<cmd>Telescope lsp_workspace_symbols<CR>', 'workspace symbols' },
        P = { '<cmd>Lspsaga preview_definition<CR>', 'preview definition' },
        f = { '<cmd>Lspsaga lsp_finder<CR>', 'lsp finder' },
        l = { '<cmd>Lspsaga show_line_diagnostics<CR>', 'line diagnostics' },
        d = { '<cmd>lua vim.lsp.buf.declaration()<CR>', 'declaration' },
        R = { '<cmd>lua vim.lsp.buf.references()<CR>', 'references' },
        p = { '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', 'prev diagnostic' },
        n = { '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', 'prev diagnostic' },
    },
    g = {
        name = '+git',
        s = { '<cmd>Telescope git_status<CR>', 'status' },
        l = { '<cmd>LazyGit<CR>', 'lazy git' },
        c = { '<cmd>LazyGitConfig<CR>', 'lazy git' },
    },
    d = {
        name = '+debugging',
        b = { "<cmd>lua require'dap'.toggle_breakpoint()<CR>", 'toggle breakpoint' },
        c = { "<cmd>lua require'dap'.continue()<CR>", 'continue' },
        o = { "<cmd>lua require'dap'.step_over()<CR>", 'step over' },
        i = { "<cmd>lua require'dap'.step_into()<CR>", 'step into' },
        C = { "<cmd>lua require'dap'.close()<CR>", 'close' },
        e = { '<cmd>lua require("dapui").eval()<CR>', 'evaluate' },
        l = { "<cmd>lua require'dap'.run_last()<CR>", 'run last' },
        n = { "<cmd>UltestNearest<CR>", 'test nearest' },
        f = { "<cmd>Ultest<CR>", 'test file' },
        s = { "<cmd>TestSuite<CR>", 'test suite' },
        t = { "<cmd>TestLast<CR>", 'test last' },
        v = { "<cmd>TestVisit<CR>", 'test visit' },

    },
}, {
  mode = "n",
  prefix = "<leader>",
  buffer = nil,
  silent = true,
  noremap = true,
  -- nowait = false,
})

