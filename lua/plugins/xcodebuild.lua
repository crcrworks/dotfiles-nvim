return {
  {
    "wojciech-kulik/xcodebuild.nvim",
    cmd = {
      "XcodebuildBuild",
      "XcodebuildRun",
      "XcodebuildBuildRun",
      "XcodebuildSelectDevice",
      "XcodebuildSetup",
      "XcodebuildSelectProject",
      "XcodebuildSetup",
    },
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("xcodebuild").setup {
        -- put some options here or leave it empty to use default settings
        commands = {
          extra_build_args = "ARCHS=x86_64",
        },
      }
    end,
  },
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<leader>x"] = { name = "Xcodebuild" },
          ["<leader>xs"] = {
            "<cmd>XcodebuildSetup<CR>",
            desc = "Setup",
          },
          ["<leader>xd"] = {
            "<cmd>XcodebuildSelectDevice<CR>",
            desc = "Select Device",
          },
          ["<leader>xp"] = {
            "<cmd>XcodebuildSelectProject<CR>",
            desc = "Select Project",
          },
          ["<leader>xo"] = {
            "<cmd>XcodebuildOpenLogs<CR>",
            desc = "Open Log",
          },
          ["<leader>xb"] = {
            "<cmd>XcodebuildBuild<CR>",
            desc = "Build",
          },
          ["<leader>xr"] = {
            "<cmd>XcodebuildRun<CR>",
            desc = "Run",
          },
          ["<leader>xB"] = {
            "<cmd>XcodebuildBuildRun<CR>",
            desc = "Build and Run",
          },
        },
      },
    },
  },
}
