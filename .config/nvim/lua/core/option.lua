-- Basic Appearance
vim.cmd("colorscheme gruvbox")
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

-- Editor Config
vim.opt.syntax = "on"
vim.opt.cursorline = false
vim.opt.number = true
vim.opt.wrap = false
vim.opt.showmode = false
vim.opt.showcmd = false
vim.opt.ruler = false
vim.opt.sidescrolloff = 20
vim.opt.scrolloff = 20
vim.opt.fillchars = 'eob: '
vim.opt.shell = "/usr/bin/bash"

-- Tab
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Backup File
vim.opt.hidden = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false

-- Disable intro messages
vim.cmd("set shortmess+=I")

-- Backspace
vim.opt.backspace = "indent,eol,start"

-- Local clipboard
vim.opt.clipboard:append("unnamedplus")

-- Excepting Keyword
vim.opt.iskeyword:append("-")

-- Explorer
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
