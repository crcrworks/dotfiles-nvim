return {
  "sphamba/smear-cursor.nvim",
  event = "BufRead",
  opts = {
    -- Cursor color. Defaults to Cursor gui color
    cursor_color = "#d3cdc3",

    -- Background color. Defaults to Normal gui background color
    -- normal_bg = "#282828",

    -- Smear cursor when switching buffers
    smear_between_buffers = false,

    -- Smear cursor when moving within line or to neighbor lines
    smear_between_neighbor_lines = true,

    -- Use floating windows to display smears over wrapped lines or outside buffers.
    -- May have performance issues with other plugins.
    use_floating_windows = false,

    -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
    -- Smears will blend better on all backgrounds.
    legacy_computing_symbols_support = true,

    stiffness = 0.8, --default: 0.6      [0, 1]
    trailing_stiffness = 0.6, --default: 0.3      [0, 1]
    trailing_exponent = 0, -- 0.1      >= 0
    distance_stop_animating = 0.3, -- 0.1      > 0
    hide_target_hack = true, -- true     boolean
  },
}