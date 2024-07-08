-- astrocommunity import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.cs" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.svelte" },

  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  { import = "astrocommunity.motion.tabout-nvim" },
  { import = "astrocommunity.recipes.telescope-nvchad-theme" },
  { import = "astrocommunity.keybinding.nvcheatsheet-nvim" },

  { import = "astrocommunity.recipes.vscode-icons" },

  { import = "astrocommunity.completion.cmp-spell" },
  { import = "astrocommunity.completion.copilot-cmp" },
}
