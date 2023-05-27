vim.g.mapleader = "<D->"

-- for conciseness
local keymap = vim.keymap


-- general keymaps
keymap.set("n","<C-s>",":w<CR>")
keymap.set("n","<C-x>",":q<CR>")
keymap.set("n","<C-t>",":NERDTreeToggle<CR>")
keymap.set("n","<C-n>",":tabnew<CR>")
keymap.set("n","<C-left>",":tabprevious<CR>")
keymap.set("n","<C-right>",":tabnext<CR>")


-- telescope keymaps
keymap.set("n", "<C-f>", "<cmd>Telescope find_files<cr>")
