vim.g.mapleader = " "

-- for conciseness
local keymap = vim.keymap


-- general keymaps
keymap.set("n","<C-s>",":w<CR>")
keymap.set("n","<C-x>",":q<CR>")
keymap.set("n","<C-t>",":NERDTreeToggle<CR>")
keymap.set("n","<C-n>",":tabnew<CR>")
keymap.set("n","<C-left>",":tabprevious<CR>")
keymap.set("n","<C-right>",":tabnext<CR>")
keymap.set("n","<C-a>",":normal! ggVG<CR>")
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true })


-- telescope keymaps
keymap.set("n", "<C-f>", "<cmd>Telescope find_files<cr>")

-- undotree keymaps 
keymap.set("n","<C-u>",":UndotreeToggle<cr>")
