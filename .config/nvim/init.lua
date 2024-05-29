-- Lazy Plugin Manager
require("plugins.lazy")

-- Core Utility
require("core.option")
require("core.keymap")

-- User Plugins
require("plugins.config.comment")
require("plugins.config.nvim-tree")
require("plugins.config.telescope")
require("plugins.config.lualine")
require("plugins.config.nvim-cmp")
require("plugins.config.treesitter")
require("plugins.config.autopairs")
require("plugins.config.autotag")
require("plugins.config.indent-line")
require("plugins.config.gitsigns")
require("plugins.config.terminal")

-- LSP
require("lsp.lspsaga")
require("lsp.lspconfig")
require("lsp.mason")
