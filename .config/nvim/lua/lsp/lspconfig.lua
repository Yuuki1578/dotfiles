local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set("n", "gf", ":Lspsaga finder<cr>")
  vim.keymap.set("n", "gD", ":lua vim.lsp.buf.declaration()<cr>", opts)
  vim.keymap.set("n", "gd", ":Lspsaga peek_definition<cr>", opts)
  vim.keymap.set("n", "gi", ":lua vim.lsp.buf.implementation()<cr>", opts)
  vim.keymap.set("n", "<leader>a", ":Lspsaga code_action<cr>", opts)
  vim.keymap.set("n", "<leader>rn", ":Lspsaga rename<cr>", opts)
  vim.keymap.set("n", "<leader>D", ":Lspsaga show_line_diagnostics<cr>", opts)
  vim.keymap.set("n", "<leader>d", ":Lspsaga show_cursor_diagnostics<cr>", opts)
  vim.keymap.set("n", "[d", ":Lspsaga diagnostic_jump_prev<cr>", opts)
  vim.keymap.set("n", "]d", ":Lspsaga diagnostic_jump_next<cr>", opts)
  vim.keymap.set("n", "K", ":Lspsaga hover_doc<cr>", opts)
  vim.keymap.set("n", "<leader>o", ":Lspsaga outline<cr>", opts)
  vim.keymap.set("n", "<leader>lf", ":lua vim.lsp.buf.format({timeout_ms = 2000})<cr>", opts)
end
local capabilities = cmp_nvim_lsp.default_capabilities()

lspconfig["html"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["cssls"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["tsserver"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})
