-- Bootstrapping Packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local PACKER_BOOTSTRAP = ensure_packer()

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugin-manager.lua source <afile> | PackerSync
augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { }
        end,
    },
}

return packer.startup(function(use)
    -- Packer managing itself
    use { "wbthomason/packer.nvim", commit="ea0cc3c59f67c440c5ff0bbe4fb9420f4350b9a3" }

    -- Colorschemes
    use { "sainnhe/sonokai", commit="bdce098fc9e7202d3c555e2dc98c755ca1c23835" }
    use { "nvim-treesitter/nvim-treesitter", commit="27f68c0b6a87cbad900b3d016425450af8268026" }

    -- Git
    use { "lewis6991/gitsigns.nvim", commit="d195f0c35ced5174d3ecce1c4c8ebb3b5bc23fa9" }
    use { "sindrets/diffview.nvim", commit="3dc498c9777fe79156f3d32dddd483b8b3dbd95f" }
    use { "kdheepak/lazygit.nvim", commit="1e08e3f5ac1152339690140e61a4a32b3bdc7de5" }

    -- Editing
    use { "windwp/nvim-autopairs", commit="9fd41181693dd4106b3e414a822bb6569924de81" }
    use { "numToStr/Comment.nvim", commit="0236521ea582747b58869cb72f70ccfa967d2e89" }

    -- LSP
    use { "williamboman/mason.nvim", commit="41e75af1f578e55ba050c863587cffde3556ffa6" }
    use { "williamboman/mason-lspconfig.nvim", commit="56e435e09f8729af2d41973e81a0db440f8fe9c9" }
    use { "neovim/nvim-lspconfig", commit="0d9e870d01894c592d7ea93cfe0fa451916d9a7f" }
    use { "https://git.sr.ht/~whynothugo/lsp_lines.nvim", commit="cf2306dd332e34a3e91075b40bdd4f6db824b2ee" }

    -- Autocompletion
    use { "ms-jpq/coq_nvim", branch="coq", commit="005bf9c5fe4f6f84570b899f62fcc14ee702f42b",
        requires={
            { "ms-jpq/coq.artifacts", branch="artifacts", commit="e7202d1a1b5cfa91446d5b7a035f915934e4d713" },
            { "ms-jpq/coq.thirdparty", branch="3p", commit="f110ee91f1b2b897ab0026da347396756953ca41" },
        }
    }

    -- Fuzzy finding
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires={
            { 'nvim-lua/plenary.nvim', commit="55d9fe89e33efd26f532ef20223e5f9430c8b0c0" }
        }
    }

    -- Status Line
    use {
        'nvim-lualine/lualine.nvim', commit="566b7036f717f3d676362742630518a47f132fff",
        requires = { 'nvim-tree/nvim-web-devicons', commit="43aa2ddf476012a2155f5f969ee55ab17174da7a" }
    }

    -- Tmux
    use { "christoomey/vim-tmux-navigator", commit="38b1d0402c4600543281dc85b3f51884205674b6" }

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
