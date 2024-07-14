-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

vim.cmd [[
xnoremap p "_dP
]]

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = false, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "auto", -- sets vim.opt.signcolumn to auto
        wrap = false, -- sets vim.opt.wrap
        conceallevel = 2,
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs with `H` and `L`
        L = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        H = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- window
        ["<A-K>"] = { "<cmd>resize -2<CR>", desc = "Resize split up" },
        ["<A-J>"] = { "<cmd>resize +2<CR>", desc = "Resize split down" },
        ["<A-H>"] = { "<cmd>vertical resize -2<CR>", desc = "Resize split left" },
        ["<A-L>"] = { "<cmd>vertical resize +2<CR>", desc = "Resize split right" },

        -- multi cursor
        ["<A-k>"] = { "<cmd>call vm#commands#add_cursor_up(0, v:count1)<cr>" },
        ["<A-j>"] = { "<cmd>call vm#commands#add_cursor_down(0, v:count1)<cr>" },

        -- Navigate Buffer
        ["<Tab>"] = {
          function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
          desc = "Next buffer",
        },
        ["<S-Tab>"] = {
          function() require("astrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
          desc = "Previous buffer",
        },

        ["<leader>fd"] = {
          "<cmd>TodoTelescope<CR>",
          desc = "Find Todo",
        },

        -- hop.nvim
        ["fw"] = {
          "<cmd>HopWord<CR>",
          desc = "Hop to word",
        },
        ["fl"] = {
          "<cmd>HopLine<CR>",
          desc = "Hop to line",
        },
        -- Xcodebuild
        ["<leader>x"] = { name = "Xcodebuild" },
        ["<leader>xs"] = {
          "<cmd>XcodebuildSetup<CR>",
          desc = "Setup",
        },
        ["<leader>xd"] = {
          "<cmd>XcodebuildSelectDevice<CR>",
          desc = "Select Device",
        },
        ["<leader>xp"] = {
          "<cmd>XcodebuildSelectProject<CR>",
          desc = "Select Project",
        },
        ["<leader>xo"] = {
          "<cmd>XcodebuildOpenLogs<CR>",
          desc = "Open Log",
        },
        ["<leader>xb"] = {
          "<cmd>XcodebuildBuild<CR>",
          desc = "Build",
        },
        ["<leader>xr"] = {
          "<cmd>XcodebuildRun<CR>",
          desc = "Run",
        },
        ["<leader>xB"] = {
          "<cmd>XcodebuildBuildRun<CR>",
          desc = "Build and Run",
        },

        ["<leader>sw"] = {
          function()
            local wezterm_config_dir = vim.fn.expand "~/.config/wezterm"
            local search_dirs = { wezterm_config_dir }
            local utils = require "astrocore"

            if vim.fn.isdirectory(wezterm_config_dir) ~= 1 then
              utils.notify("WezTerm config directory not found", vim.log.levels.WARN)
            else
              require("telescope.builtin").find_files {
                prompt_title = "WezTerm Config Files",
                search_dirs = search_dirs,
                cwd = wezterm_config_dir,
                follow = true,
              }
            end
          end,
          desc = "WezTerm Config",
        },

        -- mappings seen under group name "Buffer"
        ["<Leader>bD"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Pick to close",
        },
        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        ["<Leader>b"] = { desc = "Buffers" },
        -- quick save
        -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

        -- Copilot
        ["<C-a>"] = {
          "<cmd>CopilotChat<CR>",
          desc = "Open Copilot Chat",
        },
        ["<C-p>"] = {
          "<cmd>lua ShowCopilotChatActionPrompt()<CR>",
          desc = "Show Copilot Chat Action Prompt",
        },
        ["<C-CR>"] = {
          "<cmd>lua CopilotChatBuffer()<CR>",
          desc = "Open Copilot Chat",
        },
        ["<Leader>fn"] = {
          "<cmd>Telescope noice<CR>",
          desc = "Find Notification",
        },

        -- Obsidian
        ["<Leader>O"] = { desc = "Obsidian" },
        ["<Leader>Of"] = { "<cmd>ObsidianSearch<CR>", desc = "Find Obsidian Note" },
        ["<Leader>Ot"] = { "<cmd>ObsidianTag<CR>", desc = "Find Obsidian Tag" },
        ["<Leader>OT"] = { "<cmd>ObsidianTemplate<CR>", desc = "Insert Obsidian Template" },
      },
      t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
      },
    },
    autocmds = {},
  },
}
