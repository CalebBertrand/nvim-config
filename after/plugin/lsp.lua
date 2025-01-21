vim.opt.signcolumn = 'yes'

local lspconfig = require('lspconfig')
local lsp_zero = require('lsp-zero')

-- lsp_attach is where you enable features that only work
-- if there is a language server active in the file
local lsp_attach = function(_, bufnr)
    local opts = {buffer = bufnr}

    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', 'Q', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
    vim.keymap.set('n', 'gn', vim.diagnostic.goto_next, { noremap = true, silent = true })
end

lsp_zero.extend_lspconfig({
    sign_text = true,
    lsp_attach = lsp_attach,
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
})


lspconfig.lua_ls.setup({
    on_init = function(client)
        lsp_zero.nvim_lua_settings(client, {})
    end,
})

lspconfig.html.setup{}
lspconfig.pylsp.setup{}
lspconfig.rust_analyzer.setup{}
lspconfig.angularls.setup{}
lspconfig.ts_ls.setup({
    init_options = {
        disableAutomaticTypingAcquisition = true,
        plugins = {
            {
                name = "@vue/typescript-plugin",
                location = "/usr/lib/node_modules/@vue/language-server",
                languages = {"javascript", "typescript", "vue"},
            },
        },
    },
    filetypes = {
        "javascript",
        "typescript",
        "vue"
    },
})
lspconfig.volar.setup{}

local cmp = require('cmp')

cmp.setup({
    preselect = 'item',
    sources = {
        {name = 'nvim_lsp'},
    },
    snippet = {
        expand = function(args)
            vim.snippet.expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp.mapping.confirm({select = true})
    }),
})
