return {
	-- Colorscheme for Neovim
		"eddyekofo94/gruvbox-flat.nvim",
		priority = 1000,
		config = function()
			-- loads the colorscheme
			vim.cmd([[colorscheme gruvbox-flat]])
		end,
}
