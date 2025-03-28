-- "Classic" Git blame that shows an author for all the lines
return {
  {
    "MagicDuck/grug-far.nvim",
    config = function()
      require('grug-far').setup {
        windowCreationCommand = 'tab split'
      }
    end,
  },
}
