vim.opt.guicursor = ""

vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
-- vim.opt.smartindent = true

-- vim.opt.wrap = false

vim.opt.backup = false -- allow undotree to handle this
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.scrolloff = 8

vim.o.termguicolors = true
vim.o.ignorecase = true
