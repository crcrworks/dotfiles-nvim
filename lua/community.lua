---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- { import = "astrocommunity.pack.typescript-all-in-one" },
  -- { import = "astrocommunity.pack.typescript" },
  -- { import = "astrocommunity.pack.astro" },
  -- { import = "astrocommunity.pack.markdown" },
  -- { import = "astrocommunity.pack.svelte" },
  -- { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.cs" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.fish" },
  { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.typst" },

  { import = "astrocommunity.keybinding.nvcheatsheet-nvim" },

  { import = "astrocommunity.recipes.vscode-icons" },

  { import = "astrocommunity.markdown-and-latex.vimtex" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  -- { import = "astrocommunity.markdown-and-latex.markview-nvim" },

  -- { import = "astrocommunity.completion.cmp-spell" },
  -- { import = "astrocommunity.completion.copilot-cmp" },
  { import = "astrocommunity.completion.avante-nvim" },

  { import = "astrocommunity.recipes.telescope-nvchad-theme" },
  { import = "astrocommunity.recipes.heirline-clock-statusline" },

  { import = "astrocommunity.motion.tabout-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },

  { import = "astrocommunity.editing-support.vim-visual-multi" },
  { import = "astrocommunity.editing-support.dial-nvim" },
  { import = "astrocommunity.editing-support.nvim-treesitter-context" },
  { import = "astrocommunity.editing-support.comment-box-nvim" },
  { import = "astrocommunity.editing-support.undotree" },
  { import = "astrocommunity.editing-support.treesj" },
  { import = "astrocommunity.editing-support.vim-move" },
  { import = "astrocommunity.editing-support.wildfire-nvim" },
  { import = "astrocommunity.editing-support.neogen" },

  { import = "astrocommunity.terminal-integration.flatten-nvim" },

  { import = "astrocommunity.game.leetcode-nvim" },

  { import = "astrocommunity.media.cord-nvim" },
  { import = "astrocommunity.media.img-clip-nvim" },

  -- { import = "astrocommunity.note-taking.neorg" },

  { import = "astrocommunity.split-and-window.mini-map" },

  { import = "astrocommunity.git.neogit" },
}
