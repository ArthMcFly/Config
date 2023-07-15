local M = {}

function M.setup()
	local success, error = pcall(function()
		local npairs = require "nvim-autopairs"
		npairs.setup {
			check_ts = true,
		}
		npairs.add_rules(require "nvim-autopairs.rules.endwise-lua")
	end)

	if not success then
		print("Error: " .. error)
	end
end

return M
