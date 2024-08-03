return {
  "stevearc/overseer.nvim",
  cmd = {
    "OverseerOpen",
    "OverseerClose",
    "OverseerToggle",
    "OverseerSaveBundle",
    "OverseerLoadBundle",
    "OverseerDeleteBundle",
    "OverseerRunCmd",
    "OverseerRun",
    "OverseerInfo",
    "OverseerBuild",
    "OverseerQuickAction",
    "OverseerTaskAction",
    "OverseerClearCache",
  },
  opts = {
    dap = false,
    task_list = {
      bindings = {
        ["<C-h>"] = false,
        ["<C-j>"] = false,
        ["<C-k>"] = false,
        ["<C-l>"] = false,
      },
    },
    form = {
      win_opts = {
        winblend = 0,
      },
    },
    confirm = {
      win_opts = {
        winblend = 0,
      },
    },
    task_win = {
      win_opts = {
        winblend = 0,
      },
    },
  },
  -- stylua: ignore
  keys = {
    { "<leader>sw", "<cmd>OverseerToggle<cr>",      desc = "Task list" },
    { "<leader>so", "<cmd>OverseerRun<cr>",         desc = "Run task" },
    { "<leader>sq", "<cmd>OverseerQuickAction<cr>", desc = "Action recent task" },
    { "<leader>si", "<cmd>OverseerInfo<cr>",        desc = "Overseer Info" },
    { "<leader>sb", "<cmd>OverseerBuild<cr>",       desc = "Task builder" },
    { "<leader>st", "<cmd>OverseerTaskAction<cr>",  desc = "Task action" },
    { "<leader>sc", "<cmd>OverseerClearCache<cr>",  desc = "Clear cache" },
  },
}
