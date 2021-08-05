
return require('packer').startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  -- LSP
  use { "neovim/nvim-lspconfig" }
  use { "glepnir/lspsaga.nvim" }
  use { "hrsh7th/nvim-compe" }
  use { "ludovicchabant/vim-gutentags" }

  -- Language Specific
  use { "mgedmin/python-imports.vim" }

  -- SyntaxHighlight
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
  use { "p00f/nvim-ts-rainbow", requires = {"nvim-treesitter/nvim-treesitter"} }
  use { "norcalli/nvim-colorizer.lua" }
  use { "mboughaba/i3config.vim" }

  -- Buffers
  use { "romgrk/barbar.nvim", requires = { "kyazdani42/nvim-web-devicons" } }

  -- Files
  use { "kyazdani42/nvim-tree.lua", requires = { "kyazdani42/nvim-web-devicons" } }
  use { "nvim-telescope/telescope.nvim",
    requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}}
  }

  -- Git
  use { "junegunn/gv.vim", requires = { "tpope/vim-fugitive" } }
  use { "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" } }

  -- Better editing
  use { "windwp/nvim-autopairs" }
  use { "terrortylor/nvim-comment" }
  use { "szw/vim-maximizer" }
  use { "kevinhwang91/nvim-bqf" }
  use { "yuttie/comfortable-motion.vim" }

  -- Others
  use { "folke/which-key.nvim" }

  -- Previewing
  use { "iamcco/markdown-preview.nvim" }

  -- Tmux
  use { "christoomey/vim-tmux-navigator" }

  -- Statusline
  use { "glepnir/galaxyline.nvim" }

  -- Debugging
  use { "puremourning/vimspector" }

  -- Colorschemes
  use { "sainnhe/sonokai" }
  use { "glepnir/zephyr-nvim" }
  use { "Th3Whit3Wolf/onebuddy", requires = { "tjdevries/colorbuddy.vim" } }
  use { "sainnhe/edge" }
  use { "Th3Whit3Wolf/space-nvim" }
  use { "npxbr/gruvbox.nvim", requires = { "rktjmp/lush.nvim" }}
  use { "ray-x/aurora" }
  use { "novakne/kosmikoa.nvim" }
  use { "marko-cerovac/material.nvim" }
  use { "olimorris/onedark.nvim" }
  use { "RishabhRD/nvim-rdark", requires = { "tjdevries/colorbuddy.vim" } }

end)
