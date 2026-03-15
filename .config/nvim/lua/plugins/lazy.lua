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
    { "hrsh7th/nvim-cmp" },         -- Completions
    { "hrsh7th/cmp-buffer" },       -- Buffer completion
    { "hrsh7th/cmp-path" },         -- Path completion
    { "hrsh7th/cmp-nvim-lsp" },
    { "saadparwaiz1/cmp_luasnip" }, -- Snippet completion
    { "L3MON4D3/LuaSnip" },         -- Snippet engines
    { "rafamadriz/friendly-snippets" },
    { "kyazdani42/nvim-web-devicons" },
    { "nvim-telescope/telescope.nvim" },
    { "nvim-lualine/lualine.nvim" },


    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
            local telescope = require("telescope")
            telescope.setup()
            telescope.load_extension("fzf")
        end,
    },

    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            require("nvim-tree").setup({})
        end,
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
    },

    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd("colorscheme tokyonight-night")
        end,
    },

    { -- Gitsigns
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
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
})
