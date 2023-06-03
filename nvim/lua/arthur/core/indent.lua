-- function ready to be executed when a file is saved
function ExecuteOnSave()
	-- save the current line
	local current_position = vim.fn.getpos('.')
	-- select the whole file 
	vim.api.nvim_command("normal ggVG")
	-- indent the file 
	vim.api.nvim_command("normal =")
	-- save the file
	vim.api.nvim_command("w")
	-- back up to the anterior line
	vim.fn.setpos('.', current_position)
end

-- maps the BufWritePost event to call the function ExecuteOnSave()
vim.cmd("autocmd BufWritePost * lua ExecuteOnSave()")
