local status_ok, dap = pcall(require, "dap")
if not status_ok then
    return
end

local status_ok, dapui = pcall(require, "dapui")
if not status_ok then
    return
end

local status_ok, virtualtxt = pcall(require, "nvim-dap-virtual-text")
if not status_ok then
    return
end

-- require('dap.ui.widgets').hover()

dap.adapters.python = {
    type = 'executable';
    command = '/opt/homebrew/Caskroom/miniforge/base/envs/debug-venv/bin/python';
    args = { '-m', 'debugpy.adapter' };
}


dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

require('dap.ext.vscode').load_launchjs()

require("dapui").setup({
    icons = { expanded = "▾", collapsed = "▸" },
    mappings = {
        -- Use a table to apply multiple mappings
        expand = { "<CR>", "<2-LeftMouse>" },
        open = "o",
        remove = "d",
        edit = "e",
        repl = "r",
        toggle = "t",
    },
    expand_lines = vim.fn.has("nvim-0.7"),
    layouts = {
        {
            elements = {
                { id = "scopes", size = 0.7 },
                "breakpoints",
                "stacks",
            },
            size = 80, -- 40 columns
            position = "left",
        },
        {
            elements = {
                "console",
            },
            size = 0.25, -- 25% of total lines
            position = "bottom",
        },
    },
    floating = {
        max_height = nil, -- These can be integers or a float between 0 and 1.
        max_width = nil, -- Floats will be treated as percentage of your screen.
        border = "single", -- Border style. Can be "single", "double" or "rounded"
        mappings = {
            close = { "q", "<Esc>" },
        },
    },
    windows = { indent = 1 },
    render = {
        max_type_length = nil, -- Can be integer or nil.
    }
})
