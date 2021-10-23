local dap, dapui = require('dap'), require('dapui')

require('dap.ext.vscode').load_launchjs()

vim.fn.sign_define('DapBreakpoint', {text='', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapLogPoint', {text='', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointRejected', {text='', texthl='', linehl='', numhl=''})

dap.adapters.python = {
    type = 'executable';
    command = '/home/gabriel/.pyenv/versions/py3nvim/bin/python';
    args = { '-m', 'debugpy.adapter' };
}

require("dapui").setup({
    icons = { expanded = "▾", collapsed = "▸" },
    mappings = {
        expand = { "<CR>", "<2-LeftMouse>" },
        open = "o",
        remove = "d",
        edit = "e",
        repl = "r",
    },
    sidebar = {
        elements = {
            {
                id = "scopes",
                size = 0.40,
            },
            { id = "breakpoints", size = 0.20 },
            { id = "stacks", size = 0.20 },
            { id = "watches", size = 00.20 },
        },
        size = 70,
        position = "left",
    },
    tray = {
        elements = { "repl" },
        size = 20,
        position = "bottom",
    },
    floating = {
        max_height = nil,
        max_width = nil,
        mappings = {
            close = { "q", "<Esc>" },
        },
    },
    windows = { indent = 1 },
})

dap.listeners.after.event_initialized['dapui_config'] = function() dapui.open() end
dap.listeners.before.event_terminated['dapui_config'] = function() dapui.close() end
dap.listeners.before.event_exited['dapui_config'] = function() dapui.close() end
