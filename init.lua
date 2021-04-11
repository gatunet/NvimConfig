-- Init.lua NeoVim config file
local utils = require('utils')

-- Leader key
utils.map('n', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '

vim.cmd [[packadd packer.nvim]]

require('settings')
require('plugins')
require('config')
require('keymappings')

