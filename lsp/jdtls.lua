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
			imports = {
				gradle = {
					wrapper = {
						checksums = {
							{
								sha256 = "423cb469ccc0ecc31f0e4e1c309976198ccb734cdcbb7029d4bda0f18f57e8d9",
								allowed = true,
							},
						},
					},
				},
			},
		},
		eclipse = {
			downloadSources = true,
		},
	},
}
