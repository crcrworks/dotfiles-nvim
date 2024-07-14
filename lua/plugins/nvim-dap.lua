return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require "dap"
    local vstuc_path = os.getenv "HOME" .. "/.vscode/extensions/visualstudiotoolsforunity.vstuc-1.0.2/bin/"

    dap.adapters.vstuc = {
      type = "executable",
      command = "dotnet",
      args = {
        vstuc_path .. "UnityDebugAdapter.dll",
      },
    }

    dap.configurations.cs = {
      {
        name = "Attach to Unity",
        type = "vstuc",
        request = "attach",
        path = vim.fn.getcwd() .. "/Library/EditorInstance.json",
        logFile = vim.env.HOME .. "/vstuc.log",
        endPoint = function()
          local system_obj = vim.system { "dotnet", vstuc_path .. "UnityAttachProbe.dll" }
          local probe_result = system_obj:wait(2000).stdout

          if probe_result == nil or #probe_result == 0 then
            print "No endpoint found (is unity running?)"
            return ""
          end
          local pattern = [["debuggerPort":(%d+)]]
          local port = string.match(probe_result, pattern)

          if port == nil or #port == 0 then
            print "Failed to parse debugger port"
            return ""
          end

          return "127.0.0.1:" .. port
        end,
      },
    }
  end,
}
