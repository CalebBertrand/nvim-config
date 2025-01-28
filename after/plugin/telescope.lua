local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', function() builtin.find_files({ hidden=true }) end, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Telescope find git files' })
vim.keymap.set('n', '<leader>s', builtin.live_grep, { desc = 'Grep through current directory' })
vim.keymap.set('n', '<leader>gr', builtin.lsp_references, { desc = 'Search through references to current word' })
vim.keymap.set('n', '<leader>gl', builtin.resume, { desc = 'Resume to last search' })


