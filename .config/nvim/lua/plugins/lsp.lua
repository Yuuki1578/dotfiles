vim.lsp.enable("clangd")
vim.lsp.enable("lua_ls")
vim.lsp.enable("pyrefly")

vim.diagnostic.config({
    virtual_text = true,
    virtual_lines = {
        current_line = true,
        severity = { "WARN", "ERROR" }
    },
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(event)
        local client = vim.lsp.get_client_by_id(event.data.client_id)
        local attr = { silent = true }

        if client and client:supports_method("textDocument/completion") then
            vim.opt.completeopt = { "menu", "menuone", "noinsert", "fuzzy", "popup" }
            vim.lsp.completion.enable(true, client.id, event.buf, { autotrigger = true })

            vim.keymap.set("i", "<C-Space>", function()
                vim.lsp.completion.get()
            end, attr)
        end

        vim.keymap.set("n", "gd", ":lua vim.lsp.buf.definition()<cr>", attr)
        vim.keymap.set("n", "]d", ":lua vim.diagnostic.goto_next()<cr>", attr)
        vim.keymap.set("n", "[d", ":lua vim.diagnostic.goto_prev()<cr>", attr)
        vim.keymap.set("n", "K", ":lua vim.lsp.buf.hover()<cr>", attr)
        vim.keymap.set("n", "gi", ":Telescope lsp_definitions<cr>", attr)
        vim.keymap.set("n", "<leader>s", ":Telescope lsp_document_symbols<cr>", attr)
        vim.keymap.set("n", "<leader>S", ":Telescope lsp_dynamic_workspace_symbols<cr>", attr)
        vim.keymap.set("n", "<leader>r", ":lua vim.lsp.buf.rename()<cr>", attr)
        vim.keymap.set("n", "<leader>a", ":lua vim.lsp.buf.code_action()<cr>", attr)
        vim.keymap.set("n", "<leader>d", ":lua vim.diagnostic.get()<cr>", attr)
        vim.keymap.set("n", "<leader>g", ":Telescope diagnostics<cr>", attr)
        vim.keymap.set("n", "=", ":lua vim.lsp.buf.format({timeout_ms = 1000})<cr>", attr)
    end,
})
