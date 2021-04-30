local lspconfig = require('lspconfig')
local completion = require('completion')

vim.o.completeopt = "menuone,noinsert,noselect"

lspconfig.pyright.setup{
    on_attach = completion.on_attach
}
