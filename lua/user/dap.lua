local status_ok, dap = pcall(require, "dap")
if not status_ok then
    return
end

dap.adapters.python = {
    type = 'executable';
    command = '/opt/homebrew/Caskroom/miniforge/base/envs/debug-venv/bin/python';
    args = { '-m', 'debugpy.adapter' };
}

require('dap.ext.vscode').load_launchjs()
