-- Find all the available configs here: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
local function get_cache_dir()
	return env.XDG_CACHE_HOME and env.XDG_CACHE_HOME or env.HOME .. "/.cache"
end

local function get_jdtls_cache_dir()
	return get_cache_dir() .. "/jdtls"
end

local function get_jdtls_config_dir()
	return get_jdtls_cache_dir() .. "/config"
end

local function get_jdtls_workspace_dir()
	return get_jdtls_cache_dir() .. "/workspace"
end

local function get_jdtls_jvm_args()
	local args = {}
	for a in string.gmatch((env.JDTLS_JVM_ARGS or ""), "%S+") do
		local arg = string.format("--jvm-arg=%s", a)
		table.insert(args, arg)
	end
	return unpack(args)
end

return {
	cmd = {
		"jdtls",
		"-configuration",
		get_jdtls_config_dir(),
		"-data",
		get_jdtls_workspace_dir(),
		get_jdtls_jvm_args(),
	},
	filetypes = { "java" },
	root_markers = {
		-- Multi-module projects
		"build.gradle",
		"build.gradle.kts",
		-- Single-module projects
		"build.xml", -- Ant
		"pom.xml", -- Maven
		"settings.gradle", -- Gradle
		"settings.gradle.kts", -- Gradle
		".git",
	},
	settings = {},
}
