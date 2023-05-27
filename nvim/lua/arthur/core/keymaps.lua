vim.g.mapleader = " "

-- for conciseness
local keymap = vim.keymap


-- general keymaps
keymap.set("n","<leader>l",":nohl<CR>")
keymap.set("n","<leader>+","<C-a>")
keymap.set("n","<leader>-","<C-x>")
keymap.set("n","<C-s>",":w<CR>")
keymap.set("n","<C-x>",":q<CR>")
keymap.set("n","<C-t>",":NERDTreeToggle<CR>")
keymap.set("n","<C-n>",":tabnew<CR>")
keymap.set("n","<C-left>",":tabprevious<CR>")
keymap.set("n","<C-right>",":tabnext<CR>")


-- telescope keymaps
keymap.set("n", "<C-f>", "<cmd>Telescope find_files<cr>")
