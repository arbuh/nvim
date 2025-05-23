-- Different small utilities
return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    -- To detect big files and do not apply the computation-heavy plugins on them
    bigfile = {
        enabled = true,
        notify = true,
        size = 1.5 * 1024 * 1024,
    },
    indent = {
        enabled = true,
        animate = {
            enabled = false,
        },
    },
  },
}
