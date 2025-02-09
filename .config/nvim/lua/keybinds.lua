-- Leader key
vim.g.mapleader = " "

-- Split windows
vim.api.nvim_set_keymap("n", "<Leader>s", ":split<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>v", ":vsplit<CR>", { noremap = true, silent = true })

-- Buffer navigation
vim.api.nvim_set_keymap("n", "<Leader>bn", ":bn<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>bp", ":bp<CR>", { noremap = true, silent = true })

-- Move between splits using Ctrl + h/j/k/l
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
