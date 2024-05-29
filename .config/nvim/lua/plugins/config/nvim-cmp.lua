local cmp = require("cmp")
local luasnip = require("luasnip")
local lspkind = require("lspkind")

require("luasnip/loaders/from_vscode").lazy_load()
vim.opt.completeopt = "menu,menuone,noselect"
cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    [ "<tab>" ] = cmp.mapping.select_next_item(),
    [ "<c-k>" ] = cmp.mapping.scroll_docs(-4),
    [ "<c-j>" ] = cmp.mapping.scroll_docs(4),
    [ "<c-space>" ] = cmp.mapping.complete(),
    [ "<c-e>" ] = cmp.mapping.abort(),
    [ "<cr>" ] = cmp.mapping.confirm({ select = false }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
  }),
  formatting = {
    format = lspkind.cmp_format({
      maxwidth = 50,
      ellipsis_char = "...",
    }),
  },
})
