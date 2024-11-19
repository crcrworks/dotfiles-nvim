-- セットアッププロセスの最後に実行される。
-- カスタムファイルタイプなどを設定するのに適した場所。
-- これらは純粋なluaなので，通常の設定場所に治らないものは全てここに置くことができる。

vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}
