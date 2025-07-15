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
vim.api.nvim_set_keymap("i", "<S-Tab>", "<Esc><<i", { noremap = true, silent = true })

vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-v>", '"+p', { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-t>", ":tabnew<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-t>", "<Esc>:tabnew<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<C-K>", "k<C-Y>", { noremap = true });
vim.keymap.set("n", "<C-J>", "j<C-Y>", { noremap = true });

vim.keymap.set('n', '<C-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.keymap.set('i', '<C-j>', '<Esc>:m .+1<CR>==gi', { noremap = true, silent = true })
vim.keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

vim.keymap.set('n', '<C-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.keymap.set('i', '<C-k>', '<Esc>:m .-2<CR>==gi', { noremap = true, silent = true })
vim.keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Yank to system clipboard (register "+)
vim.keymap.set("n", "y", '"+y', opts)
vim.keymap.set("n", "Y", '"+Y', opts)
vim.keymap.set("v", "y", '"+y', opts)

-- Map delete commands to black hole register so yank register isn't affected

-- Normal mode
keymap("n", "d", '"_d', opts)
keymap("n", "D", '"_D', opts)
keymap("n", "x", '"_x', opts)
keymap("n", "X", '"_X', opts)
keymap("n", "c", '"_c', opts)
keymap("n", "C", '"_C', opts)

-- Visual mode
keymap("v", "d", '"_d', opts)
keymap("v", "x", '"_x', opts)
keymap("v", "c", '"_c', opts)
