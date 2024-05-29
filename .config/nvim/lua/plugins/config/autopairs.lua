local autopairs = require("nvim-autopairs")
local cmp = require("cmp")
local cmp_autopairs = require("nvim-autopairs.completion.cmp")

autopairs.setup()
cmp.event:on("confirm done", cmp_autopairs.on_confirm_done())
