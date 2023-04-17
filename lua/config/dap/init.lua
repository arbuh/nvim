require("config.dap.whichkey")

local dap, dapui = require("dap"), require("dapui")
-- Configure automatic opening of DAP REPL
dap.listeners.after.event_initialized["dapui_config"] = function()
    dap.repl.open()
end

dapui.setup()

-- Configurations per language
-- Scala
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

-- Python
require("dap-python").setup("python", {})

