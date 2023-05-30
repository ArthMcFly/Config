-- function ready to be executed when a file is saved
function ExecuteOnSave()
	-- select the whole file 
	vim.api.nvim_command("normal ggVG")
	-- indent the file 
	vim.api.nvim_command("normal =")
	-- save the file
	vim.api.nvim_command("w")
end

-- maps the BufWritePost event to call the function ExecuteOnSave()
vim.cmd("autocmd BufWritePost * lua ExecuteOnSave()")
