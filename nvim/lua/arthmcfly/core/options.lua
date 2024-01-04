local opt = vim.opt -- fot conciseness

-- line numbers
opt.number = true

-- tab & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.autoindent = true

-- line wrapping
opt.wrap = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursorline
opt.cursorline = true

-- appearence
opt.termguicolors = true
opt.background = "dark"

-- backspace
opt.backspace = "indent,eol,start"

-- mouse
opt.mouse = "a"

-- miscellaneous
opt.iskeyword:append("-")

vim.cmd("filetype on")
vim.cmd("au BufRead,BufNewFile *.norg set filetype=norg")
