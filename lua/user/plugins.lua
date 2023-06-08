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
    use { "kyazdani42/nvim-tree.lua", commit="e8bf3d778a74882d748f55d67af206fa8b321d99" }
    use { "numToStr/Comment.nvim", commit="2c26a00f32b190390b664e56e32fd5347613b9e2" }
    use { "JoosepAlviste/nvim-ts-context-commentstring", commit="88343753dbe81c227a1c1fd2c8d764afb8d36269" }
    use { "nvim-lualine/lualine.nvim", commit="5113cdb32f9d9588a2b56de6d1df6e33b06a554a" }
    use { "lewis6991/gitsigns.nvim", commit="facca89a95aa5e492505270a60a30825be576d14"}
    use { "lewis6991/impatient.nvim", commit="969f2c5c90457612c09cf2a13fee1adaa986d350" }
    use { "antoinemadec/FixCursorHold.nvim", commit="1bfb32e7ba1344925ad815cb0d7f901dbc0ff7c1" }
    use { "ahmedkhalf/project.nvim", commit="541115e762764bc44d7d3bf501b6e367842d3d4f" }
    use { "lukas-reineke/indent-blankline.nvim", commit="4a58fe6e9854ccfe6c6b0f59abb7cb8301e23025" }
    use { "kdheepak/lazygit.nvim", commit="9c73fd69a4c1cb3b3fc35b741ac968e331642600" }
    -- use { "mrjones2014/smart-splits.nvim", commit="2af8bc37db4d94027a52f0fdd5674e45e0878df9" }
    use { "eduardomillans/maximizer.nvim", commit="489172b333e91ae47fb2af6b267f25ce401ebc81" }

    -- Coloscheme
    use { "sainnhe/sonokai", commit="888b68bed34a18be8f3341713ccd69b549951d95" }
    use { "ellisonleao/gruvbox.nvim", commit="29c50f1327d9d84436e484aac362d2fa6bca590b" }
    use { "kaiuri/nvim-juliana", commit="95fc05d53c7c304290f81638de19a73650e0fdaa" }

    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        commit = "cc360a9",
    }
    -- use { "p00f/nvim-ts-rainbow", commit = "837167f63445821c55e6eed9dbdac1b0b29afa92" }
    use { "nvim-treesitter/nvim-treesitter-context", commit = "8bef4409a83219e800852f18c2894a60b64071b8" }

    -- Telescope
    use {
        "nvim-telescope/telescope.nvim",
        commit = "d96eaa914aab6cfc4adccb34af421bdd496468b0",
        requires = {
            {'nvim-lua/plenary.nvim', commit="968a4b9afec0c633bc369662e78f8c5db0eba249"}
        }
    }

    -- Cmp plugins
    use { "hrsh7th/nvim-cmp", commit = "b0dff0ec4f2748626aae13f011d1a47071fe9abc" }
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
    use { "glepnir/lspsaga.nvim", commit="9bfd5630b2fbc7e952a310ab0c53a288b1ae7d1b" }

    use {"simrat39/rust-tools.nvim", commit="6b069c550838e784b510c2dde961e003759e710e"}

    -- DAP
    use { "mfussenegger/nvim-dap", commit="f4a3be57f61893cffa1e22aa5e1e7bded495fcf2" }
    use { "rcarriga/nvim-dap-ui", commit="d33b905770f9c674468b0b83bed3aeab41cf9bb0" }
    use { "nvim-telescope/telescope-dap.nvim", commit="b4134fff5cbaf3b876e6011212ed60646e56f060" }
    use { "theHamsta/nvim-dap-virtual-text", commit="a36982259216afd710f55bcdc220477c74b5bc35" }
    use { "rcarriga/cmp-dap", commit="2c4cecbb9c4d255acc87ccaca727d1ad2f2b8c90" }

    -- Tests
    use { "nvim-neotest/neotest", commit="4b2926fad7386468a01dca1a2f0890cb73fd7569" }
    use { "nvim-neotest/neotest-python", commit="b6c46fe3a03d3db99f2d89c5d158e2728280bee8" }
    use { "nvim-neotest/neotest-plenary", commit="7c3656f4d74da2b17a407038cacafa0d411b396b" }

    -- Snippets
    use { "L3MON4D3/LuaSnip", commit="a12441e0598e93e67235eba67c8e6fbffc896f06" }
    use { "rafamadriz/friendly-snippets", commit="471f3ab20c1ee02d33830f379caaa8edfbd39808" }

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
