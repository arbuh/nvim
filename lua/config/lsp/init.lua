require("config.lsp.whichkey")

-- Allow all prompts sent by Metals
vim.opt_global.shortmess:remove("F")

metals = require("metals") 

--[[
local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
  vim.api.nvim_create_autocmd("FileType", {
    pattern = { "scala", "sbt", "java" },
    callback = function()
      metals.initialize_or_attach({})
    end,
    group = nvim_metals_group,
  })
  ]]

metals.initialize_or_attach({})

metals_config = metals.bare_config()

metals_config.init_options.statusBarProvider = "on"
metals_config.settings = {
    showImplicitArguments = true,
    excludedPackages = {
        "akka.actor.typed.javadsl",
        "com.github.swagger.akka.javadsl"
    }
}

print("test000")

