-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/gabriel/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/gabriel/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/gabriel/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/gabriel/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/gabriel/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  aurora = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/aurora"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["colorbuddy.vim"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/colorbuddy.vim"
  },
  ["comfortable-motion.vim"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/comfortable-motion.vim"
  },
  edge = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/edge"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/gruvbox.nvim"
  },
  ["gv.vim"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/gv.vim"
  },
  ["i3config.vim"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/i3config.vim"
  },
  ["kosmikoa.nvim"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/kosmikoa.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/lush.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/material.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/nvim-bqf"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-rdark"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/nvim-rdark"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  onebuddy = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/onebuddy"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["python-imports.vim"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/python-imports.vim"
  },
  sonokai = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/sonokai"
  },
  ["space-nvim"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/space-nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gutentags"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/vim-gutentags"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/vim-maximizer"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator"
  },
  vimspector = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/vimspector"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  },
  ["zephyr-nvim"] = {
    loaded = true,
    path = "/home/gabriel/.local/share/nvim/site/pack/packer/start/zephyr-nvim"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
