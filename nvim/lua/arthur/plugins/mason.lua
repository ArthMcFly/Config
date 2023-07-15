local success, error = pcall(function()
	require("mason").setup({
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗"
			}
		}
	})
end)

if not success then
	print("Error: " .. error)
end

