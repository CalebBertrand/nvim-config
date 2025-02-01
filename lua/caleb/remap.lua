vim.keymap.set('v', 'p', 'P')
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>xp", vim.cmd.Ex)

vim.keymap.set('i', '<C-e>', '<C-o>$')
vim.keymap.set('i', '<C-a>', '<C-o>_')

vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })
vim.keymap.set('t', '<C-p>', function()
  local alt_file = vim.fn.bufname('#') -- Get the alternate file's path
  if alt_file and alt_file ~= "" then
    local file_contents = vim.fn.readfile(alt_file) -- Read the file's contents
    local term_job_id = vim.b.terminal_job_id -- Get the terminal's job ID
    if term_job_id then
      -- Join the file contents into a single string with newline separators
      local input = table.concat(file_contents, "\\n") .. "\\n"
      vim.api.nvim_chan_send(term_job_id, input) -- Send the contents to the terminal
    else
      print("Not in a terminal buffer")
    end
  else
    print("No alternate file found")
  end
end, { noremap = true, silent = true })

