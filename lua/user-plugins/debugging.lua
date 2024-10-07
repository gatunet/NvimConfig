local dap = require("dap")
local dapui = require("dapui")
local dap_python = require("dap-python")
require("neodev").setup({
    library = { plugins = { "nvim-dap-ui" }, types = true }
})

dapui.setup()
dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end

dap_python.setup("/Users/gabriel/.local/share/nvim/mason/packages/debugpy/venv/bin/python")
