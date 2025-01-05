-- セットアッププロセスの最後に実行される。
-- カスタムファイルタイプなどを設定するのに適した場所。
-- これらは純粋なluaなので，通常の設定場所に治らないものは全てここに置くことができる。

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.sk",
  callback = function() vim.bo.filetype = "skript" end,
})

---@class parser_config
local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

parser_config.skript = {
  install_info = {
    url = "~/Development/tools/tree-sitter-skript", -- local path or git repo
    files = { "src/parser.c" }, -- note that some parsers also require src/scanner.c or src/scanner.cc
    -- optional entries:
    branch = "main", -- default branch in case of git repo if different from master
    generate_requires_npm = false, -- if stand-alone parser without npm dependencies
    requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
  },
  filetype = "sk", -- if filetype does not match the parser name
}

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
