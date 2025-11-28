-- Find all the available configs here: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
return {
	cmd = { "jdtls" },
	filetypes = { "java" },
	root_markers = {
		{ "mvnw", "gradlew", "settings.gradle", "settings.gradle.kts", ".git" },
		{ "build.xml", "pom.xml", "build.gradle", "build.gradle.kts" },
	},
	settings = {
		-- https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
		java = {
			import = {
				gradle = {
					enabled = true,
				},
			},
		},
		eclipse = {
			downloadSources = true,
		},
	},
}
