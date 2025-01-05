return {
  "vim-skk/skkeleton",
  config = function()
    vim.cmd "call skkeleton#config({ 'globalDictionaries': [['~/.skk/SKK-JISYO.L', 'euc-jp']], 'eggLikeNewline':v:true })"
    vim.cmd "imap <C-j> <Plug>(skkeleton-enable)"
    vim.cmd "cmap <C-j> <Plug>(skkeleton-enable)"
  end,
  dependencies = { "vim-denops/denops.vim" },
}
