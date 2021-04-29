
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colors
  use { 'sainnhe/sonokai' }
  use { "nvim-treesitter/nvim-treesitter", run = ':TSUpdate'}
  use { "p00f/nvim-ts-rainbow",
    requires = {"nvim-treesitter/nvim-treesitter"}
  }
  use { "norcalli/nvim-colorizer.lua" }

  -- Files
  use { "kyazdani42/nvim-tree.lua",
    requires = { "kyazdani42/nvim-web-devicons" }
  }
  use { "romgrk/barbar.nvim",
    requires = { "kyazdani42/nvim-web-devicons" }
  }
  use { 'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  -- Better editing
  use { "windwp/nvim-autopairs" }
  use { "terrortylor/nvim-comment" }
  use { "szw/vim-maximizer" }
  use { "yuttie/comfortable-motion.vim" }

  -- Tmux
  use { "christoomey/vim-tmux-navigator" }

  use { "glepnir/galaxyline.nvim" }

end)
