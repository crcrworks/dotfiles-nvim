return {
  "smoka7/hop.nvim",
  opts = {},
  dependencies = {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["fw"] = { function() require("hop").hint_words() end, desc = "Hop hint words" },
          ["fl"] = { function() require("hop").hint_lines() end, desc = "Hop hint lines" },
        },
        v = {
          ["fw"] = { function() require("hop").hint_words { extend_visual = true } end, desc = "Hop hint words" },
          ["fl"] = { function() require("hop").hint_lines { extend_visual = true } end, desc = "Hop hint lines" },
        },
      },
    },
  },
}
