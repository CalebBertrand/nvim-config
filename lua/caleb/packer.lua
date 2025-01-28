vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'


    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} },
        opts = {
            pickers = {
                lsp_references = {
                    theme = "dropdown"
                },
            },
        }
    }

    use {
        'tiagovla/tokyodark.nvim',
        requires = { { 'tiagovla/tokyodark.nvim' } },
        config = function() require('tokyodark').setup({ transparent_background = true }) end
    }

    use { "ellisonleao/gruvbox.nvim" }

    use {
        'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' }
    }

    use('theprimeagen/harpoon')

    use('mbbill/undotree')

    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")

    use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
    use('neovim/nvim-lspconfig')
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lsp')

    use { 'norcalli/nvim-colorizer.lua' }
end)

