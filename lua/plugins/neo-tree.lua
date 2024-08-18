return {
  "nvim-neo-tree/neo-tree.nvim",

  opts = function(_, opts)
    opts.window.width = 40

    local f = opts.filesystem.filtered_items

    f.visible = false -- when true, they will just be displayed differently than normal items
    f.hide_dotfiles = true
    f.hide_gitignored = true
    f.hide_hidden = true -- only works on Windows for hidden files/directories
    f.hide_by_pattern = { -- uses glob style patterns
      "*.meta",
      "*.unity",
    }
  end,
}
