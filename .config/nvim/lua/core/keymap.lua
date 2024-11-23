-- Leader key
vim.g.mapleader = " "

-- Nvim Tree file explorer
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>", { silent = true } )

-- ToggleTerm
vim.keymap.set("n", "<C-t>", ":lua horizontal_window()<cr>", { silent = true } )

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
end, { silent = true } )

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
end, { silent = true } )
