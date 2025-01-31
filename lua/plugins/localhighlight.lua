-- To highlight a word under the cursor
return {
      'tzachar/local-highlight.nvim',
      config = function()
        require('local-highlight').setup()
      end
}
