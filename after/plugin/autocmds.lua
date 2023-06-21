local api = vim.api

-- api.nvim_create_autocmd("BufEnter", {
--     pattern = { "*.scala" },
--     command = "lua print(1111)",
-- })

-- Auto-format Scala files
-- local scalaAutoFormatGroup = api.nvim_create_augroup("ScalaAutoFormat", { clear = true })
-- api.nvim_create_autocmd("BufLeave", {
--     pattern = { "*.scala" },
--     command = "!silent lua vim.lsp.buf.format({ async = true })",
--     group = scalaAutoFormatGroup,
-- })

