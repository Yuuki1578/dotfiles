-- Basic Appearance
vim.cmd("colorscheme tokyonight-night")
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
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Backup File
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false

-- Opening
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
