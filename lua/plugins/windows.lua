return {
  "anuvyklack/windows.nvim",

  config = function()
    vim.o.winheight = 5
    vim.o.winminheight = 5
    vim.o.winwidth = 10
    vim.o.winminwidth = 10
    vim.o.equalalways = false
    require("windows").setup()
  end,

  dependencies = {
    "anuvyklack/middleclass",
    "anuvyklack/animation.nvim",
  },
}
