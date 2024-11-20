return {
  "azratul/live-share.nvim",
  dependencies = {
    "jbyuki/instant.nvim",
  },
  config = function()
    vim.g.instant_username = "CRCR"
    require("live-share").setup {
      port_internal = 8080,
      -- max_attempts = 40, -- 10 seconds
      service = "serveo.net",
    }
  end,
}
