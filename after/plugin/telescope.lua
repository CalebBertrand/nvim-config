local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', function() builtin.find_files({ hidden=true }) end, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Telescope find git files' })
vim.keymap.set('n', '<leader>s', function ()
    builtin.grep_string({ search = vim.fn.input('Grep >') });
end)
