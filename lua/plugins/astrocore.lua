-- :h astrocore でヘルプを確認

vim.cmd [[
  xnoremap p "_dP
  nnoremap <C-c> <Esc>
  inoremap <C-c> <Esc>
  vnoremap <C-c> <Esc>
  cnoremap <C-c> <Esc>
]]

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    features = {
      -- ファイルのサイズ制限を設定。TreeSitterなどに影響する。
      large_buf = { size = 1024 * 500, lines = 10000 },
      autopairs = true,
      cmp = true,

      -- 0: 全てオフ
      -- 1: signsオフ
      -- 2: virtual_textオフ
      -- 3: 全てオン
      diagnostics_mode = 3,

      highlighturl = true,
      notifications = true,
    },

    diagnostics = {
      virtual_text = true,
      underline = true,
    },

    options = {
      opt = {
        relativenumber = false,
        number = true,
        spell = false,
        signcolumn = "auto",
        wrap = true,
        conceallevel = 2,
        numberwidth = 1,
      },
      g = {

        -- NOTE: "mapleader"と"maplocalleader"は，AstroNvimのoptsで設定するか，
        -- "lazy.setup"の前に設定する必要がある。
        -- これは"lua/lazy_setup.lua"ファイルにある。
      },
    },

    -- NOTE: Keycodeは，vimdocsにあるシーケンスに従うこと。
    -- 例えば，<Leader>は大文字にしなければいけない。
    mappings = {
      v = {},
      n = {

        -- navigate buffer tabs with `H` and `L`
        -- L = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        -- H = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- Tabでバッファー移動
        ["<Tab>"] = {
          function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
          desc = "Next buffer",
        },
        ["<S-Tab>"] = {
          function() require("astrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
          desc = "Previous buffer",
        },

        -- 選択してバッファーを閉じる
        ["<Leader>bD"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Pick to close",
        },
        ["<Leader>b"] = { desc = "Buffers" },
      },
      t = {},
    },
    autocmds = {},
  },
}
