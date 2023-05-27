local status, _ = pcall(vim.cmd, "colorscheme sublimemonokai")
if not status then
	print("Colorscheme not found")
	return
end
