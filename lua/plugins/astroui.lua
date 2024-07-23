-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    style = {
      border = false,
    },
    status = {
      colors = {
        bg = "#2D353B",
        section_bg = "#2D353B",
        -- winbar_bg = "#2D353B",
        -- winbarnc_bg = "#2D353B",
      },
    },
    -- change colorscheme
    colorscheme = "everforest",

    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      -- set highlights for all themes
      -- use a function override to let us use lua to retrieve
      -- colors from highlight group there is no default table
      -- so we don't need to put a parameter for this function
      init = function()
        local get_hlgroup = require("astroui").get_hlgroup
        -- get highlights from highlight groups
        local normal = get_hlgroup "Normal"
        local fg, bg = normal.fg, "#2D353B"
        local bg_alt = "#2D353B"
        local green = "#A7C080"
        local red = "#D699B6"
        -- return a table of highlights for telescope based on
        -- colors gotten from highlight groups
        return {
          TelescopeBorder = { fg = bg_alt, bg = bg },
          TelescopeNormal = { bg = bg },
          TelescopePreviewBorder = { fg = bg, bg = bg },
          TelescopePreviewNormal = { bg = bg },
          TelescopePreviewTitle = { fg = bg, bg = green },
          TelescopePromptBorder = { fg = bg_alt, bg = bg_alt },
          TelescopePromptNormal = { fg = fg, bg = bg_alt },
          TelescopePromptPrefix = { fg = red, bg = bg_alt },
          TelescopePromptTitle = { fg = bg, bg = red },
          TelescopeResultsBorder = { fg = bg, bg = bg },
          TelescopeResultsNormal = { bg = bg },
          TelescopeResultsTitle = { fg = bg, bg = bg },
          WinBar = { fg = "#9DA9A0", bg = bg },
          NeoTreeNormal = { fg = "#D3C6AA", bg = bg },
          NeoTreeTabInactive = { fg = "#D3C6AA", bg = "#232A2E" },
          NeoTreeEndOfBuffer = { fg = "#D3C6AA", bg = bg },
          NeoTreeTabSeparatorInactive = { fg = "#232A2E", bg = "#232A2E" },
        }
      end,
    },
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}
