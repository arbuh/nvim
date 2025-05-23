require("conform").setup({
  formatters_by_ft = {
    java = { "google-java-format" },
    json = { "jq" },
    lua = { "stylua" },
    markdown = { "markdownfmt " },
  },
})
