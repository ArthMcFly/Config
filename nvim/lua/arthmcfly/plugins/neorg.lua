return {
	"nvim-neorg/neorg",
	ft = { "norg" },
	build = ":Neorg sync-parsers",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		-- Set Keymap
		vim.keymap.set("n", "<leader>nn", ":Neorg<CR>", { desc = "Neorg" })

		require("neorg").setup({
			load = {
				["core.defaults"] = {}, -- Loads default behaviour
				["core.concealer"] = {}, -- Adds pretty icons to your documents
				["core.dirman"] = { -- Manages Neorg workspaces
					config = {
						workspaces = {
							notes = "~/notes",
						},
					},
				},
			},
		})
	end,
}
