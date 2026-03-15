local keymap = vim.keymap
local attr = { silent = true }

-- Leader key
vim.g.mapleader = " "

keymap.set("n", "ge", "G", attr)
keymap.set("n", "gl", "$", attr)
keymap.set("n", "gs", "_", attr)
keymap.set("n", "gh", "0", attr)

-- Redo button
keymap.set("n", "U", ":redo<cr>", attr)

-- File tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>", attr)

-- Fuzzy finder
keymap.set("n", "<leader>f", ":Telescope fd<cr>", attr)
