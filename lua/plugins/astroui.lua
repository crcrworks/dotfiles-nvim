-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

local hard = {
  bg_dim = "#1E2326",
  bg0 = "#272E33",
  bg1 = "#2E383C",
  bg2 = "#374145",
  bg3 = "#414B50",
  bg4 = "#495156",
  bg5 = "#4F5B58",
  bg_red = "#4C3743",
  bg_visual = "#493B40",
  bg_yellow = "#45443C",
  bg_green = "#3C4841",
  bg_blue = "#384B55",
  red = "#E67E80",
  orange = "#E69875",
  yellow = "#DBBC7F",
  green = "#A7C080",
  blue = "#7FBBB3",
  aqua = "#83C092",
  purple = "#D699B6",
  fg = "#D3C6AA",
  statusline1 = "#A7C080",
  statusline2 = "#D3C6AA",
  statusline3 = "#E67E80",
  gray0 = "#7A8478",
  gray1 = "#859289",
  gray2 = "#9DA9A0",
}

local medium = {
  bg_dim = "#232A2E",
  bg0 = "#2D353B",
  bg1 = "#343F44",
  bg2 = "#3D484D",
  bg3 = "#475258",
  bg4 = "#4F585E",
  bg5 = "#56635F",
  bg_red = "#543A48",
  bg_visual = "#514045",
  bg_yellow = "#4D4C43",
  bg_green = "#425047",
  bg_blue = "#3A515D",
  red = "#E67E80",
  orange = "#E69875",
  yellow = "#DBBC7F",
  green = "#A7C080",
  blue = "#7FBBB3",
  aqua = "#83C092",
  purple = "#D699B6",
  fg = "#D3C6AA",
  statusline1 = "#A7C080",
  statusline2 = "#D3C6AA",
  statusline3 = "#E67E80",
  gray0 = "#7A8478",
  gray1 = "#859289",
  gray2 = "#9DA9A0",
}

local soft = {
  bg_dim = "#293136",
  bg0 = "#333C43",
  bg1 = "#3A464C",
  bg2 = "#434F55",
  bg3 = "#4D5960",
  bg4 = "#555F66",
  bg5 = "#5D6B66",
  bg_red = "#5C3F4F",
  bg_visual = "#59464C",
  bg_yellow = "#55544A",
  bg_green = "#48584E",
  bg_blue = "#3F5865",
  red = "#E67E80",
  orange = "#E69875",
  yellow = "#DBBC7F",
  green = "#A7C080",
  blue = "#7FBBB3",
  aqua = "#83C092",
  purple = "#D699B6",
  fg = "#D3C6AA",
  statusline1 = "#A7C080",
  statusline2 = "#D3C6AA",
  statusline3 = "#E67E80",
  gray0 = "#7A8478",
  gray1 = "#859289",
  gray2 = "#9DA9A0",
}

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
        local theme = medium

        local get_hlgroup = require("astroui").get_hlgroup
        -- get highlights from highlight groups
        local normal = get_hlgroup "Normal"
        local fg, bg = normal.fg, "#2D353B"
        -- return a table of highlights for telescope based on
        -- colors gotten from highlight groups
        return {
          TelescopeBorder = { fg = theme.bg0, bg = bg },
          TelescopeNormal = { bg = bg },
          TelescopePreviewBorder = { fg = bg, bg = bg },
          TelescopePreviewNormal = { bg = bg },
          TelescopePreviewTitle = { fg = bg, bg = theme.green },
          TelescopePromptBorder = { fg = theme.bg0, bg = theme.bg0 },
          TelescopePromptNormal = { fg = fg, bg = theme.bg0 },
          TelescopePromptPrefix = { fg = theme.purple, bg = theme.bg0 },
          TelescopePromptTitle = { fg = bg, bg = theme.purple },
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
