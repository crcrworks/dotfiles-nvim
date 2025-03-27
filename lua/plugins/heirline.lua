return {
  "rebelot/heirline.nvim",
  dependencies = {
    { -- configure AstroUI to include a new UI icon
      "AstroNvim/astroui",
      ---@type AstroUIOpts
      opts = {
        icons = {
          Clock = "", -- add icon for clock
        },
      },
    },
  },
  opts = function(_, opts)
    opts.winbar = nil
    local status = require "astroui.status"
    opts.statusline = { -- statusline
      hl = { fg = "fg", bg = "bg" },
      status.component.builder {
        provider = function() return status.utils.stylize " " end,
      },
      status.component.git_branch(),
      status.component.file_info(),
      status.component.git_diff(),
      status.component.diagnostics(),
      status.component.fill(),
      status.component.cmd_info(),
      status.component.fill(),
      status.component.lsp(),
      status.component.virtual_env(),
      -- status.component.treesitter(),
      status.component.nav(),
      -- Create a custom component to display the time
      status.component.builder {
        {
          provider = function()
            local time = os.date "%H:%M" -- show hour and minute in 24 hour format
            ---@cast time string
            return status.utils.stylize(time, {
              icon = { kind = "Clock", padding = { left = 1, right = 1 } }, -- use our new clock icon
              padding = { right = 1 }, -- pad the right side so it's not cramped
            })
          end,
        },
        hl = status.hl.get_attributes "mode", -- highlight based on mode attributes
        surround = { separator = "", color = "#83c092" }, -- background highlight based on mode
      },
    }

    -- Now that we have the component, we need a timer to emit the User UpdateTime event
    vim.uv.new_timer():start( -- timer for updating the time
      (60 - tonumber(os.date "%S")) * 1000, -- offset timer based on current seconds past the minute
      60000, -- update every 60 seconds
      vim.schedule_wrap(function()
        vim.api.nvim_exec_autocmds( -- emit our new User event
          "User",
          { pattern = "UpdateTime", modeline = false }
        )
      end)
    )
  end,
}
