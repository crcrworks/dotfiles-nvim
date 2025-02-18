local util = require "lspconfig.util"

---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    features = {
      autoformat = true,
      codelens = true,
      inlay_hints = false,
      semantic_tokens = true,
    },

    formatting = {
      format_on_save = {
        enabled = true,
        ignore_filetypes = {},
      },
      -- LSPごとにDisableできる
      disabled = {
        -- "lua_ls",
      },
      timeout_ms = 1000,
      -- デフォルトのフォーマット機能を完全にOverrideする
      -- filter = function(client)
      --   return true
      -- end
    },

    servers = {
      -- "pyright"
    },

    -- lspconfigの設定
    ---@diagnostic disable: missing-fields
    config = {
      yamlls = {
        settings = {
          yaml = {
            schemas = {
              ["https://json.schemastore.org/taskfile.json"] = "Taskfile.*.yml",
            },
          },
        },
      },
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              extraEnv = { CARGO_PROFILE_RUST_ANALYZER_INHERITS = "dev" },
              extraArgs = { "--profile", "rust-analyzer" },
            },
            check = {
              command = "clippy",
            },
          },
        },
      },
    },

    -- language serversの接続方法をカスタマイズする
    handlers = {
      -- キーのないfunctionは，単にデフォルトのハンドラーである。
      -- functionは，サーバー名と，そのサーバー用に設定されたoption tableの2つのパラメータを取る。
      -- function(server, opts) require("lspconfig")[server].setup(opts) end

      -- keyはlspconfigでsetupするサーバーである。
      -- rust_analyzer = false, -- setting a handler to false will disable the set up of that language server
      -- pyright = function(_, opts) require("lspconfig").pyright.setup(opts) end -- or a custom handler function can be passed
    },

    autocmds = {

      -- keyはaugroup
      lsp_document_highlight = {
        cond = "textDocument/documentHighlight",
        -- cond = function(client, bufnr) return client.name == "lua_ls" end,
        -- list of auto commands to set
        {
          event = { "CursorHold", "CursorHoldI" },
          desc = "Document Highlighting",
          callback = function() vim.lsp.buf.document_highlight() end,
        },
        {
          event = { "CursorMoved", "CursorMovedI", "BufLeave" },
          desc = "Document Highlighting Clear",
          callback = function() vim.lsp.buf.clear_references() end,
        },
      },
    },

    mappings = {
      n = {
        gl = { function() vim.diagnostic.open_float() end, desc = "Hover diagnostics" },
        gD = {
          function() vim.lsp.buf.declaration() end,
          desc = "Declaration of current symbol",
          cond = "textDocument/declaration",
        },
      },
    },
    on_attach = function(client, bufnr) end,
  },
}
