local cmp = require "cmp"
local border_opts = {
  border = "none",
  winhighlight = "Normal:StatusLineNC,FloatBorder:FloatBorder,CursorLine:FloatShadow,Search:None",
}
return {
  "hrsh7th/nvim-cmp",
  opts = {
    window = {
      completion = cmp.config.window.bordered(border_opts),
      documentation = cmp.config.window.bordered(border_opts),
    },
  },
}
