-- packer setup
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

--require('settings')
require('keymappings')
require('plugins')

require('colorscheme')

require('plugins_configs.treesitter')
require('plugins_configs.nvimtree')
require('plugins_configs.barbar')
require('plugins_configs.gitsigns')
require('plugins_configs.autopairs')
require('plugins_configs.colorizer')
require('plugins_configs.nvim_comment')
require('plugins_configs.comfortable_motion')

vim.cmd("source /home/gartunius/.config/nvim/vimscript/settings.vim")
