return {
	"lervag/vimtex",
	ft = { "tex" },
	init = function()
		-- VimTeX configuration goes here, e.g.
		vim.g.vimtex_compiler_latexmk = {
			out_dir = "build",
		}
		vim.g.vimtex_view_method = "zathura"
	end,
}
