local utils = require('utils')

return require('packer').startup(function()

    -- Plugin manager
    use {'wbthomason/packer.nvim', opt = true}


    -- INTERFACE ========================================================================

    -- Colorscheme
    use { 'sainnhe/sonokai' } -- best with treesitter; monokai like
    use { 'morhetz/gruvbox' } -- alternative
    use { 'kyazdani42/nvim-web-devicons' }
    use { 'cj/vim-webdevicons' }
    use { 'mboughaba/i3config.vim' }
    use { 'ryanoasis/vim-devicons' }

    -- Treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'p00f/nvim-ts-rainbow' }
    use { 'windwp/nvim-ts-autotag' }

    -- Git
    use { 'airblade/vim-gitgutter' }
    use { 'tpope/vim-fugitive' }
    use { 'rbong/vim-flog' }
    -- use { 'junegunn/gv.vim' }

    -- Buffers
    use { 'romgrk/barbar.nvim' }
    use { 'szw/vim-maximizer' }
    use { 'machakann/vim-highlightedyank' }
    use { 'Yggdroot/indentLine' }
    use { 'junegunn/vim-easy-align' }

    -- Statusline
    -- use { 'ojroques/nvim-hardline' }
    use { 'hoob3rt/lualine.nvim' ,
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- Tmux
    use { 'christoomey/vim-tmux-navigator' }

    -- Extras
    use { 'norcalli/nvim-colorizer.lua' }


    -- Editing ==========================================================================

    -- Movement
    use { 'yuttie/comfortable-motion.vim' }
    -- use { 'preservim/tagbar' }

    -- Speed Editing
    use { 'jiangmiao/auto-pairs' }
    use { 'tpope/vim-commentary' }
    -- use { 'itmammoth/doorboy.vim' } -- Auto pairs alternative
    
    -- Snippets
    use { 'hrsh7th/vim-vsnip' }

    -- Keybindings
    use { 'liuchengxu/vim-which-key' }

    -- Files ============================================================================

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    use { 'kyazdani42/nvim-tree.lua' }


    -- Code =============================================================================

    -- LSP
    use { 'neovim/nvim-lspconfig' }

    -- Completion
    -- use { 'hrsh7th/nvim-compe' }
    -- use { 'nvim-lua/lsp-status.nvim' }
    -- use { 'glepnir/lspsaga.nvim' }
    -- use { 'RishabhRD/nvim-lsputils' }
    -- use { 'onsails/lspkind-nvim' }

    -- Completion BKP
    use { 'neoclide/coc.nvim/' }

    -- use { 'kristijanhusak/vim-dadbod-completion' }
    -- use { 'metakirby5/codi.vim' }
    -- use { 'dbeniamine/cheat.sh-vim' }

    -- Debug
    use { 'puremourning/vimspector' }
    
    -- Extras ===========================================================================
    use { 'glacambre/firenvim' }

end)

