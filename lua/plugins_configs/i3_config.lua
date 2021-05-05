vim.cmd([[
aug i3config_ft_detection
	au!
	au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
	au BufNewFile,BufRead ~/.config/sway/config set filetype=i3config
aug end
]])
