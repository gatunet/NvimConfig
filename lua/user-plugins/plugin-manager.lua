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

    -- Autocomplete
    use {
        "hrsh7th/cmp-nvim-lsp",
        commit="5af77f54de1b16c34b23cba810150689a3a90312",
        requires={
            { "hrsh7th/nvim-cmp", commit="538e37ba87284942c1d76ed38dd497e54e65b891" },
            { "hrsh7th/cmp-buffer", commit="3022dbc9166796b644a841a02de8dd1cc1d311fa" },
            { "hrsh7th/cmp-path", commit="91ff86cd9c29299a64f968ebb45846c485725f23" },
            { "hrsh7th/cmp-cmdline", commit="8ee981b4a91f536f52add291594e89fb6645e451" },
            { "L3MON4D3/LuaSnip", commit="2463d687fe704b76eb0aa3bb34e95f69a5bb0362" },
            { "saadparwaiz1/cmp_luasnip", commit="05a9ab28b53f71d1aece421ef32fee2cb857a843" }
        }
    }

    -- Fuzzy finding
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = {
            { 'nvim-lua/plenary.nvim', commit="55d9fe89e33efd26f532ef20223e5f9430c8b0c0" }
        }
    }

    -- Status Line
    use {
        'nvim-lualine/lualine.nvim', commit="566b7036f717f3d676362742630518a47f132fff",
        requires={
            'nvim-tree/nvim-web-devicons', commit="43aa2ddf476012a2155f5f969ee55ab17174da7a"
        }
    }

    -- Tmux
    use { "christoomey/vim-tmux-navigator", commit="38b1d0402c4600543281dc85b3f51884205674b6" }

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
