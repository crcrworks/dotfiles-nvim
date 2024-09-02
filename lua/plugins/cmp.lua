return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require "cmp"
    local border_opts = {
      border = "none",
      winhighlight = "Normal:StatusLineNC,FloatBorder:FloatBorder,CursorLine:FloatShadow,Search:None",
    }

    -- vim.opt.spell = true
    -- vim.opt.spelllang = { "en_us" }

    opts.window = {
      completion = cmp.config.window.bordered(border_opts),
      documentation = cmp.config.window.bordered(border_opts),
    }
    opts.sources = cmp.config.sources {
      -- { name = "copilot", group_index = 2, priority = 1 },
      { name = "nvim_lsp", option = { show_autosnippets = true }, group_index = 1, priority = 2 },
      { name = "luasnip", group_index = 1, priority = 2 },
      { name = "nerdfont", group_index = 1, priority = 2 },
      { name = "buffer", group_index = 1, priority = 2 },
      { name = "path", group_index = 1, priority = 2 },
      { name = "treesitter", group_index = 1, priority = 2 },
      { name = "crates", group_index = 1, priority = 1 },
      {
        name = "spell",
        group_index = 1,
        priority = 1,
        option = {
          keep_all_entries = false,
          enable_in_context = function() return true end,
          preselect_correct_word = true,
        },
      },
    }
  end,
}
