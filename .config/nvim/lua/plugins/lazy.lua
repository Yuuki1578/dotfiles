local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

  -- Appearance
  { "folke/tokyonight.nvim", lazy = false, priority = 1000 },
  { "lewis6991/gitsigns.nvim" },
  { "akinsho/toggleterm.nvim" },
  { "nvim-tree/nvim-tree.lua" },
  { "kyazdani42/nvim-web-devicons" },
  { "nvim-lualine/lualine.nvim" },

  -- Utilities
  { "numToStr/Comment.nvim" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "windwp/nvim-autopairs" },
  { "onsails/lspkind.nvim" },
  { "ray-x/lsp_signature.nvim", event = "InsertEnter" },
  { "windwp/nvim-ts-autotag" },

  -- LSP
  { "neovim/nvim-lspconfig" },
})
