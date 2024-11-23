local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set("n", "gD", ":lua vim.lsp.buf.declaration()<cr>", opts)
  vim.keymap.set("n", "gd", ":lua vim.lsp.buf.definition()<cr>", opts)
  vim.keymap.set("n", "gf", ":lua vim.diagnostic.open_float()<cr>", opts)
  vim.keymap.set("n", "gi", ":lua vim.lsp.buf.implementation()<cr>", opts)
  vim.keymap.set("n", "gs", ":lua vim.lsp.buf.signature_help()<cr>", opts)
  vim.keymap.set("n", "gt", ":lua vim.lsp.buf.type_definition()<cr>", opts)
  vim.keymap.set("n", "gr", ":lua vim.lsp.buf.references()<cr>", opts)
  vim.keymap.set("n", "<leader>a", ":lua vim.lsp.buf.code_action()<cr>", opts)
  vim.keymap.set("n", "<leader>rn", ":lua vim.lsp.buf.rename()<cr>", opts)
  vim.keymap.set("n", "[d", ":lua vim.diagnostic.goto_prev()<cr>", opts)
  vim.keymap.set("n", "]d", ":lua vim.diagnostic.goto_next()<cr>", opts)
  vim.keymap.set("n", "K", ":lua vim.lsp.buf.hover()<cr>", opts)
  vim.keymap.set("n", "<leader>lf", ":lua vim.lsp.buf.format({timeout_ms = 1000})<cr>", opts)
end

local capabilities = cmp_nvim_lsp.default_capabilities()

-- lspconfig["clangd"].setup({
--   capabilities = capabilities,
--   on_attach = on_attach
-- })
