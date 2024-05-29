-- Leader key
vim.g.mapleader = " "

-- Keymap option
local silent = {silent = true}

-- Nvim Tree file explorer
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>", silent)

-- Fuzzy Finder
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<cr>", silent)
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<cr>", silent)
vim.keymap.set("n", "<leader>fs", ":Telescope grep_string<cr>", silent)
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<cr>", silent)
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<cr>", silent)

-- Highlight Toggle
local nh = true
vim.keymap.set("n", "<leader>nh", function()
  if nh then
    vim.opt.hlsearch = false
    nh = false
  else
    vim.opt.hlsearch = true
    nh = true
  end
end, silent)

-- Wrap toggle
local nw = true
vim.keymap.set("n", "<leader>nw", function()
  if nw then
    vim.opt.wrap = true
    nw = false
  else
    vim.opt.wrap = false
    nw = true
  end
end, silent)

-- Terminal
vim.keymap.set("n", "<leader>t", ":lua horizontal_window()<cr>", silent)

-- Plugins
vim.keymap.set("n", "<leader>L", ":Lazy<cr>", silent)
