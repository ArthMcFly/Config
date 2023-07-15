local status, _ = pcall(vim.cmd, "colorscheme gruvbox-flat")
if not status then
	print("Colorscheme not found")
	return
end
