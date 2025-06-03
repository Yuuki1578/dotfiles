-- Lazy Plugin Manager
require("plugins.lazy")

-- Core Utility
require("core.option")
require("core.keymap")

-- User Plugins
require("plugins.config.lualine")
require("plugins.config.nvim-cmp")
require("plugins.config.treesitter")
require("plugins.config.autopairs")
require("plugins.config.terminal")
require("plugins.config.short-config")

-- LSP
require("lsp.lspconfig")
