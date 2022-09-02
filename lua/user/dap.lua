local dap_status_ok, dap = pcall(require, "dap")
if not dap_status_ok then
    return
end

local dapui_status_ok, dapui = pcall(require, "dapui")
if not dapui_status_ok then
    return
end

local virtualtxt_status_ok, virtualtxt = pcall(require, "nvim-dap-virtual-text")
if not virtualtxt_status_ok then
    return
end

require('dap.ext.vscode').load_launchjs()

vim.fn.sign_define('DapBreakpoint', {text='', texthl='', linehl='', numhl=''})

dap.adapters.python = {
    type = 'executable';
    command = '/opt/homebrew/Caskroom/miniforge/base/envs/debug-venv/bin/python';
    args = { '-m', 'debugpy.adapter' };
}

dap.adapters.codelldb = {
    type = "server",
    port = 13000,
    host = "127.0.0.1"
    -- port = "${port}",
    -- executable = {
    --     command = "/Users/gabriel/Programming/Crab/rustdbg/extension/adapter/codelldb",
    --     args = {"--port", "${port}"}
    --
    -- }
}

dap.configurations.rust = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = true,
  },
}

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end

dapui.setup({
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
                -- "repl"
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
