-- Allow all prompts sent by Metals
vim.opt_global.shortmess:remove("F")

metals = require("metals") 

metals_config = metals.bare_config()

-- Enable messages from Metals
--vim.g['metals_status']
vim.g.metals_status = true
metals_config.init_options.statusBarProvider = "on"

metals_config.settings = {
    showImplicitArguments = true,
    excludedPackages = {
        "akka.actor.typed.javadsl",
        "com.github.swagger.akka.javadsl"
    }
}

metals_config.capabilities = require("cmp_nvim_lsp").default_capabilities()

metals_config.on_attach = function(client, bufnr)
  metals.setup_dap()
end

-- Autocmd to start Metals
local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "scala", "sbt", "java" },
    callback = function()
      metals.initialize_or_attach(metals_config)
    end,
    group = nvim_metals_group,
})

