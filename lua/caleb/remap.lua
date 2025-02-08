vim.keymap.set('v', 'p', 'P')
vim.g.mapleader = " "

vim.keymap.set('i', '<C-e>', '<C-o>$')
vim.keymap.set('i', '<C-a>', '<C-o>_')

vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })
