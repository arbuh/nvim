require("config.dap.whichkey")

local dap, dapui = require("dap"), require("dapui")
-- Config automatic opening of DAP UI
dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end

dapui.setup()

-- Scala configurations
dap.configurations.scala = {
  {
    type = "scala",
    request = "launch",
    name = "RunOrTest",
    metals = {
      runType = "runOrTestFile",
    },
  },
  {
    type = "scala",
    request = "launch",
    name = "Test Target",
    metals = {
      runType = "testTarget",
    },
  },
}

metals_config.on_attach = function(client, bufnr)
  require("metals").setup_dap()
end


