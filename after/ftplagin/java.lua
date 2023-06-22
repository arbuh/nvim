local config = {
    cmd = { '/path/to/jdt-language-server/bin/jdtls' },
    root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
    settings = {
        java = {
            enabled = true,
            settings = {
                url = "https://google.github.io/styleguide/intellij-java-google-style.xml",
                profile = "GoogleStyle",
            },
        }
    },
}
require('jdtls').start_or_attach(config)
