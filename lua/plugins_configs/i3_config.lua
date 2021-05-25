vim.cmd([[
aug i3config_ft_detection
	au!
	au BufNewFile,BufRead ~/.config/sway/config set filetype=i3config
	au BufNewFile,BufRead ~/.config/waybar/config set filetype=json

	au BufNewFile,BufRead ~/PersonalProjects/dotfiles/sway/.config/sway/config set filetype=i3config
	au BufNewFile,BufRead ~/PersonalProjects/dotfiles/waybar/.config/waybar/config set filetype=json
aug end
]])
