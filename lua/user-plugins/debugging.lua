local dap = require("dap")
local dapui = require("dapui")

vim.api.nvim_create_autocmd('BufWritePost', {
  group = vim.api.nvim_create_augroup('my-dap-launch.json', { clear = true }),
  pattern = "*/launch.json",
  callback = function(args)
    require('dap.ext.vscode').load_launchjs(args.file)
  end
})

require("dap.ext.vscode").load_launchjs('.nvim/launch.json')

-- DAP ADAPTERS
dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    -- CHANGE THIS to your path!
    command = '/Users/gabriel/.local/share/nvim/mason/bin/codelldb',
    args = {"--port", "${port}"},

    -- On windows you may have to uncomment this:
    -- detached = false,
  }
}

dap.configurations.rust = {
    {
        type = "codelldb",
        request = "launch",
        -- This is where cargo outputs the executable
        program = function ()
            os.execute("cargo build &> /dev/null")
            return "target/debug/${workspaceFolderBasename}"
        end,
        args = function ()
            local argv = {}
            -- arg = vim.fn.input(string.format("argv: "))
            -- for a in string.gmatch(arg, "%S+") do
            --     table.insert(argv, a)
            -- end
            return argv
        end,
        cwd = "${workspaceFolder}",
        -- Uncomment if you want to stop at main
        stopOnEntry = true,
    },
}

dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
