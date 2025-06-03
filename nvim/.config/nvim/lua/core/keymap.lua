-- Leader key
vim.g.mapleader = " "

-- Silent option
local silent = {
  silent = true,
}

-- Nvim Tree file explorer
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>", silent)

-- ToggleTerm
vim.keymap.set("n", "<C-t>", ":lua horizontal_window()<cr>", silent)

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
