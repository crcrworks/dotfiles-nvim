return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    opts.defaults.file_ignore_patterns = {
      ".meta",
      ".prefab",
      ".png",
      ".pdf",
    }
  end,
}
