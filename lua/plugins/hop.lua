return {
  {
    "phaazon/hop.nvim",
    cmd = {
      "HopWord",
      "HopLine",
      "HopChar1",
      "HopChar2",
      "HopPattern",
      "HopLineStart",
    },
    branch = "v2",
    config = function()
      require("hop").setup {
        keys = "etovxqpdygfblzhckisuran",
      }
    end,
  },
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["fw"] = {
            "<cmd>HopWord<CR>",
            desc = "Hop to word",
          },
          ["fl"] = {
            "<cmd>HopLine<CR>",
            desc = "Hop to line",
          },
        },
      },
    },
  },
}
