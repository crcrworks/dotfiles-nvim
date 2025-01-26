return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      g = {
        vimtex_compiler_latexmk = {
          background = 0,
          build_dir = "",
          continuous = 1,
          options = { "-pdfdvi", "-verbose", "-file-line-error", "-synctex=1", "-interaction=nonstopmode" },
        },
        vimtex_format_enabled = true,
      },
    },
    mappings = {
      n = {
        ["<Leader>L"] = { group = "LaTeX" },
        ["<Leader>Lc"] = { "<cmd>VimtexClean<CR>", desc = "Clean" },
        ["<Leader>Le"] = { "<cmd>VimtexErrors<CR>", desc = "Show Errors" },
        ["<Leader>Lg"] = { "<cmd>VimtexStatus<CR>", desc = "Show Status" },
        ["<Leader>Li"] = { "<cmd>VimtexInfo<CR>", desc = "Show Info" },
        ["<Leader>Lk"] = { "<cmd>VimtexStop<CR>", desc = "Stop Vimtex" },
        ["<Leader>LK"] = { "<cmd>VimtexStopAll<CR>", desc = "Stop All Vimtex" },
        ["<Leader>LL"] = { "<cmd>VimtexCompileSS<CR>", desc = "Compile Section" },
        ["<Leader>Ll"] = { "<cmd>VimtexCompile<CR>", desc = "Compile" },
        ["<Leader>Lm"] = { "<cmd>VimtexImapsList<CR>", desc = "Show Imaps" },
        ["<Leader>Lo"] = { "<cmd>VimtexCompileOutput<CR>", desc = "Show Compiler Output" },
        ["<Leader>Lq"] = { "<cmd>VimtexLog<CR>", desc = "Show VimTeX Log" },
        ["<Leader>Ls"] = { "<cmd>VimtexToggleMain<CR>", desc = "Toggle Main" },
        ["<Leader>Lv"] = { "<cmd>VimtexView<CR>", desc = "View Compiled Document" },
        ["<Leader>LX"] = { "<cmd>VimtexReloadState<CR>", desc = "Reload VimTeX State" },
        ["<Leader>Lx"] = { "<cmd>VimtexReload<CR>", desc = "Reload VimTeX" },
      },
    },
  },
}
