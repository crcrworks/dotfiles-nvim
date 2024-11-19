return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      opts.defaults.file_ignore_patterns = {
        ".meta",
        ".asset",
        ".prefab",
        ".png",
        ".pdf",
        ".mat",
        ".asmdef",
        ".*lock*",
        "ProjectSettings/*",
        "Packages/*",
        "TextMesh Pro/*",
      }
    end,
  },
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<leader>fd"] = {
            "<cmd>TodoTelescope<CR>",
            desc = "Find Todo",
          },
          ["<leader>fi"] = {
            function() require("telescope.builtin").highlights {} end,
            desc = "Find Highlights",
          },
          ["fo"] = {
            function() require("telescope.builtin").jumplist {} end,
            desc = "Find jumplist",
          },
          ["<Leader>fn"] = {
            "<cmd>Telescope noice<CR>",
            desc = "Find Notification",
          },
        },
      },
    },
  },
}
