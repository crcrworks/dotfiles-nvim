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
    status = {
      colors = {
        bg = "#2D353B",
        section_bg = "#2D353B",
        -- winbar_bg = "#2D353B",
        -- winbarnc_bg = "#2D353B",
      },
    },
    colorscheme = "everforest",

    highlights = {
      -- この関数にパラメータは必要ない
      init = function()
        local theme = medium

        local get_hlgroup = require("astroui").get_hlgroup
        -- get highlights from highlight groups
        local normal = get_hlgroup "Normal"
        local fg, bg = normal.fg, "#2D353B"
        return {

          TelescopeBorder = { fg = theme.bg0, bg = theme.bg1 },
          TelescopeNormal = { bg = bg },
          TelescopePreviewBorder = { fg = theme.bg1, bg = theme.bg1 },
          TelescopePreviewNormal = { bg = theme.bg1 },
          TelescopePreviewTitle = { fg = bg, bg = theme.green },
          TelescopePromptBorder = { fg = theme.bg1, bg = theme.bg1 },
          TelescopePromptNormal = { fg = fg, bg = theme.bg1 },
          TelescopePromptPrefix = { fg = theme.purple, bg = theme.bg1 },
          TelescopePromptTitle = { fg = bg, bg = theme.purple },
          TelescopeResultsBorder = { fg = theme.bg3, bg = theme.bg1 },
          TelescopeResultsNormal = { bg = theme.bg1 },
          TelescopeResultsTitle = { fg = theme.gray0, bg = theme.bg1 },
          TelescopeSelection = { bg = theme.bg3 },

          WinBar = { fg = theme.gray1, bg = bg },

          NeoTreeNormal = { fg = theme.fg, bg = bg },
          NeoTreeTabInactive = { fg = theme.gray1, bg = theme.bg_dim },
          NeoTreeEndOfBuffer = { fg = theme.fg, bg = bg },
          NeoTreeTabSeparatorInactive = { fg = theme.bg_dim, bg = theme.bg_dim },

          FloatBorder = { fg = theme.bg2, bg = theme.bg1 },
          NeotreeFloatBorder = { fg = theme.gray1, bg = theme.bg0 },
          NormalFloat = { bg = theme.bg1 },
        }
      end,
    },

    icons = {
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
