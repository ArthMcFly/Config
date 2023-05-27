local opt = vim.opt -- fot conciseness

-- line numbers
opt.number = true

-- tab & indentation
opt.tabstop = 4 
opt.shiftwidth = 4
opt.autoindent = true

-- line wrapping
opt.wrap = false

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

-- clipboard
opt.clipboard:append("unnamedplus")

-- mouse
opt.mouse = "a"

-- supertab config
vim.g.SuperTabDefaultCompletionType = "<c-n>"

-- miscellaneous
opt.iskeyword:append("-")
