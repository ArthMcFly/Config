-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- get lualine nightfly theme
local nightfly = require("lualine.themes.nightfly")

-- new colors for theme
local new_colors = {
	blue = "#65D1FF",
	green = "#3EFFDC",
	violet = "#FF61EF",
	yellow = "#FFDA7B",
	black = "#000000",
}

-- change nightlfy theme colors
nightfly.normal.a.bg = new_colors.blue
nightfly.insert.a.bg = new_colors.green
nightfly.visual.a.bg = new_colors.violet
nightfly.command = {
	a = {
		gui = "bold",
		bg = new_colors.yellow,
		fg = new_colors.black, -- black
	},
}

-- get lualine gruvbox theme
local gruvbox = require 'lualine.themes.gruvbox'

-- configure lualine with modified theme
lualine.setup({
	options = {
		theme = gruvbox,
	},
})
