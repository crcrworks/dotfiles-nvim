-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    opts.highlight = {
      enable = true,
      disable = { "ini" },
    }
    opts.indent = {
      enable = false,
    }
    opts.autotag = {
      enable = true,
    }
    opts.textobjects = {
      disable = false,
    }
    opts.sync_install = false
    opts.auto_install = true
    opts.additional_vim_regex_highlighting = false

    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "lua",
      "vim",
      -- add more arguments for adding more treesitter parsers
    })
  end,
}
