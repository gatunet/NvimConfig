vim.api.nvim_exec([[
aug i3config_ft_detection
	au!
	au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
	au BufNewFile,BufRead ~/.config/sway/config set filetype=i3config
	au BufNewFile,BufRead ~/Softwares/dotfiles/i3/.config/i3/config set filetype=i3config
	au BufNewFile,BufRead ~/Softwares/dotfiles/sway/.config/sway/config set filetype=i3config
aug end
]], false)

