return {
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
}
