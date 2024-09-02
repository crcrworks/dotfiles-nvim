return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    opts.defaults.file_ignore_patterns = {
      ".meta",
      ".asset",
      ".prefab",
      ".png",
      ".pdf",
      ".mat",
      ".conf",
      ".asmdef",
      ".*lock*",
      "ProjectSettings/*",
      "Packages/*",
      "TextMesh Pro/*",
    }
  end,
}
