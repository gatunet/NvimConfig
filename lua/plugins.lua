
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorscheme
  use { 'sainnhe/sonokai' }

  -- Treesitter
  use { "nvim-treesitter/nvim-treesitter", run = ':TSUpdate'}
  use { "p00f/nvim-ts-rainbow",
    requires = {"nvim-treesitter/nvim-treesitter"}
  }

  -- File explorer
  use { "kyazdani42/nvim-tree.lua",
    requires = { "kyazdani42/nvim-web-devicons" }
  }

  -- Buffers
  --use { "romgrk/barbar.nvim",
   -- requires = { "kyazdani42/nvim-web-devicons" }
  --}

end)
