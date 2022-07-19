-- Packer setup
local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
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
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

return packer.startup(function(use)
    use { "wbthomason/packer.nvim", commit = "00ec5adef58c5ff9a07f11f45903b9dbbaa1b422" }
    use { "windwp/nvim-autopairs", commit = "fa6876f832ea1b71801c4e481d8feca9a36215ec" }
    use { "folke/which-key.nvim", commit = "bd4411a2ed4dd8bb69c125e339d837028a6eea71" }
    use { "kyazdani42/nvim-web-devicons", commit="8d2c5337f0a2d0a17de8e751876eeb192b32310e" }
    use { "kyazdani42/nvim-tree.lua", commit="e6c1b4cd5be9f14c169b5dbe0665a148f8af498c" }
    use { "numToStr/Comment.nvim", commit="2c26a00f32b190390b664e56e32fd5347613b9e2" }
    use { "JoosepAlviste/nvim-ts-context-commentstring", commit="88343753dbe81c227a1c1fd2c8d764afb8d36269" }
    use { "nvim-lualine/lualine.nvim", commit="5113cdb32f9d9588a2b56de6d1df6e33b06a554a" }
    use { "lewis6991/gitsigns.nvim", commit="4883988cf8b623f63cc8c7d3f11b18b7e81f06ff" }
    use { "lewis6991/impatient.nvim", commit="969f2c5c90457612c09cf2a13fee1adaa986d350" }
    use { "antoinemadec/FixCursorHold.nvim", commit="1bfb32e7ba1344925ad815cb0d7f901dbc0ff7c1" }
    use { "ahmedkhalf/project.nvim", commit="541115e762764bc44d7d3bf501b6e367842d3d4f" }
    use { "lukas-reineke/indent-blankline.nvim", commit="4a58fe6e9854ccfe6c6b0f59abb7cb8301e23025" }
    use { "kdheepak/lazygit.nvim", commit="9c73fd69a4c1cb3b3fc35b741ac968e331642600" }
    -- use { "numirias/semshi", commit="252f07fd5f0ae9eb19d02bae979fd7c9152c1ccf" }
    -- use { "Vimjas/vim-python-pep8-indent", commit="60ba5e11a61618c0344e2db190210145083c91f8" }

    -- Coloscheme
    use { "sainnhe/sonokai" }
    use { "ellisonleao/gruvbox.nvim" }
    use { "marko-cerovac/material.nvim" }

    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        commit = "518e27589c0463af15463c9d675c65e464efc2fe",
    }
    use { "p00f/nvim-ts-rainbow", commit = "837167f63445821c55e6eed9dbdac1b0b29afa92" }

    -- Telescope
    use {
        "nvim-telescope/telescope.nvim",
        commit = "d96eaa914aab6cfc4adccb34af421bdd496468b0",
        requires = { 
            {'nvim-lua/plenary.nvim', commit="968a4b9afec0c633bc369662e78f8c5db0eba249"} 
        }
    }

    -- Cmp plugins
    use { "hrsh7th/nvim-cmp", commit = "df6734aa018d6feb4d76ba6bda94b1aeac2b378a" }
    use { "hrsh7th/cmp-buffer", commit = "62fc67a2b0205136bc3e312664624ba2ab4a9323" }
    use { "hrsh7th/cmp-path", commit = "466b6b8270f7ba89abd59f402c73f63c7331ff6e" }
    use { "saadparwaiz1/cmp_luasnip", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" }
    use { "hrsh7th/cmp-nvim-lsp", commit = "affe808a5c56b71630f17aa7c38e15c59fd648a8" }
    use { "hrsh7th/cmp-nvim-lua", commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21" }

    -- LSP
    use { "neovim/nvim-lspconfig", commit = "148c99bd09b44cf3605151a06869f6b4d4c24455" }
    use { "williamboman/nvim-lsp-installer", commit = "e9f13d7acaa60aff91c58b923002228668c8c9e6" }
    use { "jose-elias-alvarez/null-ls.nvim", commit = "ff40739e5be6581899b43385997e39eecdbf9465" }
    use { "RRethy/vim-illuminate", commit = "c82e6d04f27a41d7fdcad9be0bce5bb59fcb78e5" }
    use { "glepnir/lspsaga.nvim", commit="fd07a4e583571119b33826041c47af950341325f" }

    -- DAP
    use { "mfussenegger/nvim-dap", commit="f4a3be57f61893cffa1e22aa5e1e7bded495fcf2" }
    use { "rcarriga/nvim-dap-ui", commit="d33b905770f9c674468b0b83bed3aeab41cf9bb0" }
    use { "nvim-telescope/telescope-dap.nvim", commit="b4134fff5cbaf3b876e6011212ed60646e56f060" }
    use { "theHamsta/nvim-dap-virtual-text", commit="a36982259216afd710f55bcdc220477c74b5bc35" }
    use { "rcarriga/cmp-dap", commit="2c4cecbb9c4d255acc87ccaca727d1ad2f2b8c90" }

    -- Snippets
    use { "L3MON4D3/LuaSnip", commit="a12441e0598e93e67235eba67c8e6fbffc896f06" }
    use { "rafamadriz/friendly-snippets", commit="471f3ab20c1ee02d33830f379caaa8edfbd39808" }

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
