-- Basic Appearance
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

-- Editor Config
vim.opt.syntax = "on"
vim.opt.number = true
vim.opt.wrap = false
vim.opt.showmode = false
vim.opt.showcmd = false
vim.opt.ruler = false
vim.opt.smoothscroll = true
vim.opt.scrolloff = 15
vim.opt.sidescrolloff = 15
vim.opt.fillchars = 'eob: '

-- Tab 
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false

-- Backup File
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false

-- Opening
vim.cmd("set shortmess+=I")

-- Shell
vim.opt.shell = "ash"

-- Backspace
vim.opt.backspace = "indent,eol,start"
