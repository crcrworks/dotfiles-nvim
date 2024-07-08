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
      { name = "nvim_lsp" },
      { name = "buffer" },
      { name = "path" },
      { name = "treesitter" },
      { name = "copilot", group_index = 2 },
      {
        name = "spell",
        option = {
          keep_all_entries = false,
          enable_in_context = function() return true end,
          preselect_correct_word = true,
        },
      },
    }
  end,
}
