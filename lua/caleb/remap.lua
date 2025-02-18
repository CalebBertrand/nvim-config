vim.keymap.set('v', 'p', 'P')
vim.keymap.set('v', '<C-f>', '"hy/\\V<C-R>h<CR>')
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>lg", "<Plug>(lazygit.nvim)")

vim.keymap.set('i', '<C-e>', '<C-o>$')
vim.keymap.set('i', '<C-a>', '<C-o>_')

vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })
