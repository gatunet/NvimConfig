require'lspconfig'.pyls_ms.setup{
    cmd = { "dotnet", "exec", "/home/gartunius/Softwares/NeoVimPlugins/LSPs/python-language-server/output/bin/Debug/Microsoft.Python.LanguageServer.dll" };
    on_attach = require'lspconfig'.custom_on_attach
}
