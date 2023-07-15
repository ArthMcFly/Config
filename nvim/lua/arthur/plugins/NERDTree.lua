local success, error = pcall(function()
	vim.g.NERDTreeShowHidden = 1
	vim.g.NERDTreeGitStatusIndicatorMapCustom = {
		Modified  = "✹",
		Staged    = "✚",
		Untracked = "✭",
		Renamed   = "➜",
		Unmerged  = "═",
		Deleted   = "✖",
		Dirty     = "✗",
		Clean     = "✔︎",
		Ignored   = '☒',
		Unknown   = "?"
	}
end)

if not success then
	print("Error: " .. error)
end

