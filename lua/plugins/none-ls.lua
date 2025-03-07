-- Customize None-ls sources

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    opts.sources = {
      -- Set a formatter
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.biome.with {
        args = {
          "check",
          "--write",
          "--formatter-enabled=false",
          "--linter-enabled=false",
          "--organize-imports-enabled=true",
          "--stdin-file-path",
          "$FILENAME",
        },
      },
      null_ls.builtins.diagnostics.sqlfluff.with {
        extra_args = { "--dialect", "mysql" },
      },
    }
    return opts -- return final config table
  end,
}
