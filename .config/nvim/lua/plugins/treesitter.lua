require("nvim-treesitter.configs").setup({
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
        "lua",
        "markdown",
        "markdown_inline",
        "c",
        "cpp",
        "html",
        "css",
        "javascript",
        "typescript",
    },
})
