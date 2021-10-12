
return require('packer').startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    -- LSP
    use { "neovim/nvim-lspconfig" }
    use { "glepnir/lspsaga.nvim" }
    use { "hrsh7th/nvim-compe" }

    -- Language Specific

    -- SyntaxHighlight
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
    use { "p00f/nvim-ts-rainbow", requires = {"nvim-treesitter/nvim-treesitter"} }
    use { "norcalli/nvim-colorizer.lua" }
    use { "mboughaba/i3config.vim" }

    -- Buffers
    use { "romgrk/barbar.nvim", requires = { "kyazdani42/nvim-web-devicons" } }
    use { "lukas-reineke/indent-blankline.nvim" }

    -- Files
    use { "kyazdani42/nvim-tree.lua", requires = { "kyazdani42/nvim-web-devicons" } }
    use { "nvim-telescope/telescope.nvim",
        requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}}
    }

    -- Git
    use { "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" } }
    use { "kdheepak/lazygit.nvim" }
    use { "APZelos/blamer.nvim" }

    -- Better editing
    use { "windwp/nvim-autopairs" }
    use { "terrortylor/nvim-comment" }
    use { "szw/vim-maximizer" }
    use { "kevinhwang91/nvim-bqf" }
    use { "windwp/nvim-ts-autotag" }

    -- Mappings
    use { "folke/which-key.nvim" }

    -- Previewing
    use { "iamcco/markdown-preview.nvim" }

    -- Tmux
    use { "christoomey/vim-tmux-navigator" }

    -- Statusline
    use { "glepnir/galaxyline.nvim" }

    -- Debugging
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    use { "rcarriga/vim-ultest", requires = {"vim-test/vim-test"}, run = ":UpdateRemotePlugins" }

    -- Colorschemes
    use { "sainnhe/sonokai" }
    use { "sainnhe/edge" }
    use { "sainnhe/gruvbox-material" }

end)
