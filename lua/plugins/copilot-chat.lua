function CopilotChatBuffer()
  local input = vim.fn.input "Quick Chat: "
  if input ~= "" then require("CopilotChat").ask(input) end
end

function ShowCopilotChatActionPrompt()
  local actions = require "CopilotChat.actions"
  require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
end

return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    event = "BufRead",
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    opts = {
      debug = true,
    },
    config = function()
      require("CopilotChat.integrations.cmp").setup()

      require("CopilotChat").setup {
        mappings = {
          complete = {
            insert = "",
          },
        },
      }

      local select = require "CopilotChat.select"
      require("CopilotChat").setup {
        prompts = {
          Review = {
            prompt = "/COPILOT_REVIEW 選択したコードを日本語でレビューしてください。",
            selection = select.buffer,
          },
          Explain = {
            prompt = "/COPILOT_EXPLAIN カーソル上のコードの説明を段落をつけて書いてください。",
          },
          Tests = {
            prompt = "/COPILOT_TESTS カーソル上のコードの詳細な単体テスト関数を書いてください。",
          },
          Fix = {
            prompt = "/COPILOT_FIX このコードには問題があります。バグを修正したコードに書き換えてください。",
          },
          Optimize = {
            prompt = "/COPILOT_REFACTOR 選択したコードを最適化し、パフォーマンスと可読性を向上させてください。",
          },
          Docs = {
            prompt = "/COPILOT_REFACTOR 選択したコードのドキュメントを書いてください。ドキュメントをコメントとして追加した元のコードを含むコードブロックで回答してください。使用するプログラミング言語に最も適したドキュメントスタイルを使用してください（例：JavaScriptのJSDoc、Pythonのdocstringsなど）",
          },
          Commit = {
            prompt = "/COPILOT_COMMIT コミットメッセージをコミット規約に従って英語で記述してください。(feat,choreなどのprefixを使う)タイトルは最大50文字で、メッセージは72文字で折り返してください。メッセージは主観を取り入れず，事実だけを述べてください。メッセージ全体をgitcommit言語でコードブロックにラップしてください。",
            selection = select.gitdiff,
          },
          CommitJP = {
            prompt = "/COPILOT_COMMIT_JP コミットメッセージをコミット規約に従って記述してください。(feat,choreなどのprefixを使う)タイトルは最大50文字で日本語で記述、メッセージは72文字で折り返して日本語で記述してください。メッセージは主観を取り入れず，事実だけを述べてください。メッセージ全体をgitcommit言語でコードブロックにラップしてください。",
            selection = select.gitdiff,
          },
          FixDiagnostic = {
            prompt = "ファイル内の次のような診断上の問題を解決してください：",
            selection = select.diagnostics,
          },
        },
      }
    end,
  },
}
