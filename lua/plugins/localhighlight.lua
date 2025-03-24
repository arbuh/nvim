-- To highlight a word under the cursor
return {
      'tzachar/local-highlight.nvim',
      config = function()
        require('local-highlight').setup({
            disable_file_types = {'json', 'jsonl', 'csv'},
        })
      end
}
