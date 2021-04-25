
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorscheme
  use { 'sainnhe/sonokai' }

  -- Treesitter
  use { "nvim-treesitter/nvim-treesitter", run = ':TSUpdate'}
  use { "p00f/nvim-ts-rainbow" }

end)
