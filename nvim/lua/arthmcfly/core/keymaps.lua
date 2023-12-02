vim.g.mapleader = " "
-- for conciseness
local keymap = vim.keymap

-- Tabby keymaps
vim.api.nvim_set_keymap("n", "<leader>ta", ":$tabnew<CR>", { noremap = true, desc = "New tab" })
vim.api.nvim_set_keymap("n", "<leader>tc", ":tabclose<CR>", { noremap = true, desc = "Close tab" })
vim.api.nvim_set_keymap("n", "<leader>to", ":tabonly<CR>", { noremap = true, desc = "Close all tabs" })
vim.api.nvim_set_keymap("n", "<leader>tn", ":tabn<CR>", { noremap = true, desc = "Next tab" })
vim.api.nvim_set_keymap("n", "<leader>tp", ":tabp<CR>", { noremap = true, desc = "previous tab" })
-- move current tab to previous position
vim.api.nvim_set_keymap("n", "<leader>tmp", ":-tabmove<CR>", { noremap = true })
-- move current tab to next position
vim.api.nvim_set_keymap("n", "<leader>tmn", ":+tabmove<CR>", { noremap = true })

-- Nvim-tree keymaps
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer

-- Custom keymaps

keymap.set("n", "<leader>ww", ":w<CR>", { noremap = true, desc = "Save" })
keymap.set("n", "<leader>wq", ":wq<CR>", { noremap = true, desc = "Save and quit" })
