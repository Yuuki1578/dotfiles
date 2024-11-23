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
