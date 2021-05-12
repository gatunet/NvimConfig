
return require('packer').startup(function()
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

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

  -- Colors
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
  use { "p00f/nvim-ts-rainbow", requires = {"nvim-treesitter/nvim-treesitter"} }
  use { "norcalli/nvim-colorizer.lua" }
  use { "mboughaba/i3config.vim" }

  -- Files
  use { "kyazdani42/nvim-tree.lua", requires = { "kyazdani42/nvim-web-devicons" } }
  use { "romgrk/barbar.nvim", requires = { "kyazdani42/nvim-web-devicons" } }
  use { "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" } }
  use { "nvim-telescope/telescope.nvim",
    requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}}
  }
  use { "junegunn/gv.vim", requires = { "tpope/vim-fugitive" } }
  -- Better editing
  use { "windwp/nvim-autopairs" }
  use { "terrortylor/nvim-comment" }
  use { "szw/vim-maximizer" }
  use { "yuttie/comfortable-motion.vim" }
  use { "neoclide/coc.nvim", branch = "release" }

  -- Tmux
  use { "christoomey/vim-tmux-navigator" }

  -- Statusline
  use { "glepnir/galaxyline.nvim" }

  -- Debuggin
  use { "puremourning/vimspector" }

end)
