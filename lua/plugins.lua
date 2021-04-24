local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    execute "packadd packer.nvim"
end

--- Check if a file or directory exists in this path
local function require_plugin(plugin)
    local plugin_prefix = fn.stdpath("data") .. "/site/pack/packer/opt/"

    local plugin_path = plugin_prefix .. plugin .. "/"
    --	print('test '..plugin_path)
    local ok, err, code = os.rename(plugin_path, plugin_path)
    if not ok then
        if code == 13 then
            -- Permission denied, but it exists
            return true
        end
    end
    --	print(ok, err, code)
    if ok then
        vim.cmd("packadd " .. plugin)
    end
    return ok, err, code
end

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

return require("packer").startup(
    function(use)
        -- Packer can manage itself as an optional plugin
        use "wbthomason/packer.nvim"

        -- Lsp
        use {"neoclide/coc.nvim", branch = 'release'}

        -- Telescope
        use {"nvim-lua/popup.nvim", opt = true}
        use {"nvim-lua/plenary.nvim", opt = true}
        use {"nvim-telescope/telescope.nvim", opt = true}

        -- Debugging
        use {'puremourning/vimspector', opt = true}

        -- Autocomplete
        use {"hrsh7th/vim-vsnip", opt = true}
        use {"rafamadriz/friendly-snippets", opt = true}
        -- use {"codota/tabnine-vim", opt = true} -- Installed manually

        -- Treesitter
        use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
        use {"windwp/nvim-ts-autotag", opt = true}
        use {'p00f/nvim-ts-rainbow', opt = true}

        -- Explorer
        use "kyazdani42/nvim-tree.lua"

        -- Tmux
        use {'christoomey/vim-tmux-navigator', opt = true}

        -- use {'lukas-reineke/indent-blankline.nvim', opt=true, branch = 'lua'}
        use {"liuchengxu/vim-which-key", opt = true}
        use {"ChristianChiarulli/dashboard-nvim", opt = true}
        use {"windwp/nvim-autopairs", opt = true}
        use {"terrortylor/nvim-comment", opt = true}
        use {"kevinhwang91/nvim-bqf", opt = true}
        use {"yuttie/comfortable-motion.vim", opt = true}
        use {"szw/vim-maximizer", opt = true}

        -- Git
        use {"airblade/vim-gitgutter", opt = true}

        -- Color
        use {'sainnhe/sonokai', opt = true}
        use {"norcalli/nvim-colorizer.lua", opt = true}
        use {"mboughaba/i3config.vim", opt = true}

        -- Icons
        use {"kyazdani42/nvim-web-devicons", opt = true}

        -- Status Line and Bufferline
        use {'hoob3rt/lualine.nvim', opt = true}
        use {"romgrk/barbar.nvim", opt = true}

        require_plugin("coc.nvim")
        require_plugin("popup.nvim")
        require_plugin("plenary.nvim")
        require_plugin("telescope.nvim")
        require_plugin("vimspector")
        require_plugin("vim-vsnip")
        require_plugin("nvim-treesitter")
        require_plugin("nvim-ts-autotag")
        require_plugin("nvim-ts-rainbow")
        require_plugin("nvim-tree.lua")
        require_plugin("vim-gitgutter")
        require_plugin("vim-which-key")
        require_plugin("dashboard-nvim")
        require_plugin("nvim-autopairs")
        require_plugin("nvim-comment")
        require_plugin("nvim-bqf")
        require_plugin("sonokai")
        require_plugin("nvim-web-devicons")
        require_plugin("lualine.nvim")
        require_plugin("barbar.nvim")
        require_plugin("vim-tmux-navigator")
        require_plugin("comfortable-motion.vim")
        require_plugin("vim-maximizer")
        require_plugin("nvim-colorizer.lua")
        require_plugin("i3config.vim")
    end
)
