local runner = {}

function runner.run_code_considering_file_type()
    local extension = vim.fn.expand('%:e')

  local command = ''
  if extension == 'py' then
    command = 'python3'
  else
    print("File type not supported.")
    return
  end

  vim.cmd('!' .. command .. ' %')
end

return runner

