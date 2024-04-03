-- If in a header file, toggle to implementation file with Alt+o

function ToggleHeaderCpp()
  local extension = vim.fn.expand '%:e'
  if extension == 'h' or extension == 'hpp' then
    vim.cmd 'edit %:r.cpp'
  elseif extension == 'cpp' then
    vim.cmd 'edit %:r.h'
  end
end

vim.api.nvim_set_keymap('n', '<A-o>', ':lua ToggleHeaderCpp()<CR>', { noremap = true, silent = true })

return {}
