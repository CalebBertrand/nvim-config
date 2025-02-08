-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

vim.g.maplocalleader = "\\"

require("lazy").setup({
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = {
            pickers = {
                lsp_references = {
                    theme = "dropdown"
                },
            },
        }
    },

    -- themes
    { 'ellisonleao/gruvbox.nvim' },
    {
        "pauchiner/pastelnight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        'tiagovla/tokyodark.nvim',
        config = function()
            require('tokyodark')
        end
    },

    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
    { 'theprimeagen/harpoon' },
    { 'mbbill/undotree' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim', branch = 'v4.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'norcalli/nvim-colorizer.lua' },
    {
        "mikavilpas/yazi.nvim",
        event = "VeryLazy",
        keys = {
            {
                -- Open in the current working directory
                "<leader>xp",
                "<cmd>Yazi<cr>",
                desc = "Open the file manager in nvim's working directory",
            }
        },
        opts = {
            -- if you want to open yazi instead of netrw, see below for more info
            open_for_directories = false,
            keymaps = {
                show_help = "<f1>",
            },
            floating_window_scaling_factor = 1,
        },
    },
    {
        'akinsho/toggleterm.nvim',
        version = "*", opts = {
            open_mapping = [[<c-`>]],
            direction = 'float',
            float_opts = {
                border = 'curved'
            }
        }
    }
})

