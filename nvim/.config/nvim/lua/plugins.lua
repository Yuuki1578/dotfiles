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
    { "neovim/nvim-lspconfig", lazy = true },       -- Native LSP plugins
    { "onsails/lspkind.nvim" },                     -- LSP symbols
    { "hrsh7th/nvim-cmp" },                         -- Completions
    { "hrsh7th/cmp-buffer" },                       -- Buffer completion
    { "hrsh7th/cmp-path" },                         -- Path completion
    { "hrsh7th/cmp-nvim-lsp" },                     -- LSP completion
    { "saadparwaiz1/cmp_luasnip" },                 -- Snippet completion
    { "L3MON4D3/LuaSnip" },                         -- Snippet engines

    {
        'stevearc/oil.nvim',
        opts = {},
        lazy = false,
        dependencies = { 
            { "echasnovski/mini.icons", opts = {} },
        },
        config = function()
            require("oil").setup()
        end
    },

    { -- Colorscheme
        "ellisonleao/gruvbox.nvim", 
        priority = 1000,
        config = function()
            vim.cmd("colorscheme gruvbox")
        end 
    },

    { -- Gitsigns 
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end
    },

    { -- Statusline 
        "nvim-lualine/lualine.nvim",
        config = function()
            require("lualine").setup({
                sections = {
                    lualine_a = {"mode"},
                    lualine_b = {"branch", "diff", "diagnostics"},
                    lualine_c = {},
                    lualine_x = {},
                    lualine_y = {},
                    lualine_z = {"progress", "location"},
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = {},
                    lualine_x = {},
                    lualine_y = {},
                    lualine_z = {"filename"},
                }
            })
        end
    },

    { -- Commenter plugin 
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end
    },

    { -- Tree sitter syntax highlighting
        "nvim-treesitter/nvim-treesitter", 
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                highlight = { enable = true },
                indent = { enable = true },
                ensure_installed = {},
            })
        end
    },

    { -- Auto pairs for neovim
        "windwp/nvim-autopairs",
        config = function()
            local autopairs = require("nvim-autopairs")
            local cmp = require("cmp")
            local cmp_autopairs = require("nvim-autopairs.completion.cmp")

            autopairs.setup()
            cmp.event:on("confirm done", cmp_autopairs.on_confirm_done())
        end
    },

    { -- Signature helper for LSP
        "ray-x/lsp_signature.nvim",
        event = "InsertEnter",
        config = function()
            require("lsp_signature").setup({
                hint_enable = false
            })
        end
    },
})
