vim.keymap.set('v', 'p', 'P')
vim.keymap.set('v', '<C-f>', '"hy/\\V<C-R>h<CR>')
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>lg", "<Plug>(lazygit.nvim)")

vim.keymap.set('i', '<C-e>', '<C-o>$')
vim.keymap.set('i', '<C-a>', '<C-o>_')

vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })

vim.keymap.set('n', '<leader>z', function ()
    vim.cmd('Zoom')
end)

vim.api.nvim_set_keymap("n", "<Tab>", ">>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", "<<", { noremap = true, silent = true })

vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-v>", '"+p', { noremap = true, silent = true })

