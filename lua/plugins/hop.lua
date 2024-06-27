return {
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
}
