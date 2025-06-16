require("conform").setup({
	formatters_by_ft = {
		-- If formatting does not work, make sure you have the following formatters installed!
		java = { "google-java-format" },
		json = { "jq" },
		lua = { "stylua" },
		markdown = { "markdownfmt " },
	},
})
