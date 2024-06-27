return {
  "folke/noice.nvim",
  event = "VeryLazy",
  config = function()
    require("noice").setup {
      lsp = {
        signature = {
          enabled = false,
        },
        hover = {
          enabled = false,
        },
      },
    }
  end,
  opts = {
    messages = {
      view = "mini", -- default view for messages
      view_error = "mini", -- view for errors
      view_warn = "mini", -- view for warnings
      view_search = "mini",
    },
    routes = {
      view = "mini",
    },
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
  },
}
